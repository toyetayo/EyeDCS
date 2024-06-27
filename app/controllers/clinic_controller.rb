# app/controllers/clinics_controller.rb
class ClinicsController < ApplicationController
  def index
    @clinics = Clinic.all
  end
end
