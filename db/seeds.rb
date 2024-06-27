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
# db/seeds.rb

# seeds.rb

# seeds.rb

# seeds.rb

require_relative '../lib/faker/eye_clinics'
require_relative '../lib/faker/eye_services'
require_relative '../lib/faker/eye_diseases'

# Clear existing data (optional, but useful for resetting during development)
ClinicService.destroy_all
DiseaseService.destroy_all
Clinic.destroy_all
Service.destroy_all
Disease.destroy_all

# Number of records to generate
NUM_CLINICS = 250
NUM_SERVICES = 250
NUM_DISEASES = 250

# Generate Clinics with custom data from Faker::EyeClinics
puts "Generating Clinics with custom data..."
NUM_CLINICS.times do
  Clinic.create!(
    name: Faker::EyeClinics.clinic_name,
    address: Faker::EyeClinics.address,
    contact: Faker::EyeClinics.contact,
    latitude: Faker::EyeClinics.latitude,
    longitude: Faker::EyeClinics.longitude
  )
end

# Generate Services with custom data from Faker::EyeServices
puts "Generating Services with custom data..."
NUM_SERVICES.times do
  disease_name = Faker::EyeDiseases.disease_name
  service_name = Faker::EyeServices.service_name(disease_name)

  Service.create!(
    name: service_name,
    description: Faker::EyeServices.description(service_name)
  )
end

# Generate Diseases with custom data from Faker::EyeDiseases
puts "Generating Diseases with custom data..."
NUM_DISEASES.times do
  disease_name = Faker::EyeDiseases.disease_name

  Disease.create!(
    name: disease_name,
    symptoms: Faker::EyeDiseases.disease_symptoms(disease_name),
    treatment: Faker::EyeDiseases.disease_treatment(disease_name),
    prevalence: Faker::EyeDiseases.disease_prevalence,
    description: Faker::EyeDiseases.disease_description(disease_name)
  )
end

# Create associations for ClinicServices
puts "Creating associations between Clinics and Services..."
Clinic.all.each do |clinic|
  services = Service.all.sample(3)  # Each clinic has 3 random services
  services.each do |service|
    ClinicService.create!(clinic: clinic, service: service)
  end
end

# Create associations for DiseaseServices
puts "Creating associations between Services and Diseases..."
Service.all.each do |service|
  diseases = Disease.all.sample(2)  # Each service is linked to 2 random diseases
  diseases.each do |disease|
    DiseaseService.create!(service: service, disease: disease)
  end
end

# Create a default admin user (for development environment only if not already created)
if Rails.env.development? && AdminUser.where(email: 'admin@example.com').empty?
  AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
end

puts "Database seeding with custom data completed!"
