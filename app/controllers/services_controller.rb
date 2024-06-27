# app/controllers/services_controller.rb
class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :edit, :update, :destroy]

  # GET /services
  def index
    @services = Service.page(params[:page]).per(10)
  end

  # GET /services/1
  def show
    @service = Service.find(params[:id])
    @clinics = @service.clinics
    @diseases = @service.diseases
  end

  # GET /services/new
  def new
    @service = Service.new
  end

  # GET /services/1/edit
  def edit
    # @service is already set by before_action
  end

  # POST /services
  def create
    @service = Service.new(service_params)

    if @service.save
      redirect_to @service, notice: 'Service was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /services/1
  def update
    if @service.update(service_params)
      redirect_to @service, notice: 'Service was successfully updated.'
    else
      render :edit
    end
  end

  private
    # Use a before_action to fetch the service by :id for show, edit, update, and destroy actions
    def set_service
      @service = Service.find(params[:id])
    end

    # Use strong parameters to whitelist attributes for service creation/update
    def service_params
      params.require(:service).permit(:name, :description)
    end
end
