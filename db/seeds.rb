# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#   require 'csv'

# Clear existing data (optional, but useful for resetting during development)
ClinicService.destroy_all
DiseaseService.destroy_all
Clinic.destroy_all
Service.destroy_all
Disease.destroy_all

# Load Clinics from CSV
CSV.foreach(Rails.root.join('db/seed_data/clinics.csv'), headers: true) do |row|
  Clinic.create!(
    name: row['name'],
    address: row['address'],
    contact: row['contact'],
    latitude: row['latitude'].to_f,
    longitude: row['longitude'].to_f
  )
end

# Load Services from CSV
CSV.foreach(Rails.root.join('db/seed_data/services.csv'), headers: true) do |row|
  Service.create!(
    name: row['name'],
    description: row['description']
  )
end

# Load Diseases from CSV
CSV.foreach(Rails.root.join('db/seed_data/diseases.csv'), headers: true) do |row|
  Disease.create!(
    name: row['name'],
    symptoms: row['symptoms'],
    treatment: row['treatment'],
    prevalence: row['prevalence'],
    description: row['description']
  )
end

# Manually create associations for ClinicServices and DiseaseServices
Clinic.all.each do |clinic|
  Service.all.sample(3).each do |service|
    ClinicService.create!(clinic: clinic, service: service)
  end
end

Service.all.each do |service|
  Disease.all.sample(2).each do |disease|
    DiseaseService.create!(service: service, disease: disease)
  end
end
