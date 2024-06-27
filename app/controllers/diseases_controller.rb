
class DiseasesController < ApplicationController
  before_action :set_disease, only: [:show, :edit, :update, :destroy]

  # GET /diseases
  def index
    @diseases = Disease.page(params[:page]).per(10)
  end

  # GET /diseases/1
  def show
    @disease = Disease.find(params[:id])
    @services = @disease.services
  end

  # GET /diseases/new
  def new
    @disease = Disease.new
  end

  # GET /diseases/1/edit
  def edit
    # @disease is already set by before_action
  end

  # POST /diseases
  def create
    @disease = Disease.new(disease_params)

    if @disease.save
      redirect_to @disease, notice: 'Disease was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /diseases/1
  def update
    if @disease.update(disease_params)
      redirect_to @disease, notice: 'Disease was successfully updated.'
    else
      render :edit
    end
  end

  private
    # Use a before_action to fetch the disease by :id for show, edit, update, and destroy actions
    def set_disease
      @disease = Disease.find(params[:id])
    end

    # Use strong parameters to whitelist attributes for disease creation/update
    def disease_params
      params.require(:disease).permit(:name, :description)
    end
end
