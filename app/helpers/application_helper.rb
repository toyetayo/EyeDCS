module ApplicationHelper
  def category_options_for_select
    categories = []

    # Include model names along with categories
    categories << ["Clinics", "Clinic"]
    categories << ["Services", "Service"]
    categories << ["Diseases", "Disease"]

    # Fetch all distinct names from Service, Disease, and Clinic models
    categories += Service.pluck(:name).uniq.map { |name| [name, "Service"] } if Service.column_names.include?('name')
    categories += Disease.pluck(:name).uniq.map { |name| [name, "Disease"] } if Disease.column_names.include?('name')
    categories += Clinic.pluck(:name).uniq.map { |name| [name, "Clinic"] } if Clinic.column_names.include?('name')

    categories.uniq.compact.sort
  end
end
