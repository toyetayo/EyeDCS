class SearchController < ApplicationController
  def index
    # Get the search term and selected category from params
    search_term = params[:search]
    selected_category = params[:category]

    # Initialize empty arrays for search results
    @clinics = []
    @services = []
    @diseases = []

    # Filter based on the selected category
    if selected_category.present? && selected_category != 'All'
      if selected_category == 'Clinic'
        @clinics = Clinic.where("name LIKE ?", "%#{search_term}%")
      elsif selected_category == 'Service'
        @services = Service.where("name LIKE ?", "%#{search_term}%")
      elsif selected_category == 'Disease'
        @diseases = Disease.where("name LIKE ?", "%#{search_term}%")
      end
    else
      # If no category is selected or 'All' is selected, search across all models
      @clinics = Clinic.where("name LIKE ?", "%#{search_term}%")
      @services = Service.where("name LIKE ?", "%#{search_term}%")
      @diseases = Disease.where("name LIKE ?", "%#{search_term}%")
    end
  end
end
