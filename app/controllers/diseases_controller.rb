# app/controllers/diseases_controller.rb
class DiseasesController < ApplicationController
  def index
    @diseases = Disease.all
  end
end
