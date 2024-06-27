# app/controllers/clinics_controller.rb
class ClinicsController < ApplicationController
  before_action :set_clinic, only: [:show, :edit, :update, :destroy]

  # GET /clinics
  def index
    @clinics = Clinic.page(params[:page]).per(10)
  end

  # GET /clinics/1
  def show
    @clinic = Clinic.find(params[:id])
    @services = @clinic.services
  end

  # GET /clinics/new
  def new
    @clinic = Clinic.new
  end

  # DELETE /clinics/1
  def destroy
    @clinic.destroy
    redirect_to clinics_url, notice: 'Clinic was successfully destroyed.'
  end

  # GET /clinics/1/edit
  def edit
    # @clinic is already set by before_action
  end

  # POST /clinics
  def create
    @clinic = Clinic.new(clinic_params)

    if @clinic.save
      redirect_to @clinic, notice: 'Clinic was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /clinics/1
  def update
    if @clinic.update(clinic_params)
      redirect_to @clinic, notice: 'Clinic was successfully updated.'
    else
      render :edit
    end
  end

  private
    # Use a before_action to fetch the clinic by :id for show, edit, update, and destroy actions
    def set_clinic
      @clinic = Clinic.find(params[:id])
    end

    # Use strong parameters to whitelist attributes for clinic creation/update
    def clinic_params
      params.require(:clinic).permit(:name, :address, :contact, :latitude, :longitude)
    end
end
