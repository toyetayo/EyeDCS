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

require 'faker'

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

# Generate Clinics with Faker
puts "Generating Clinics with Faker..."
NUM_CLINICS.times do
  Clinic.create!(
    name: Faker::Company.name,
    address: Faker::Address.full_address,
    contact: Faker::PhoneNumber.phone_number,
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude
  )
end

# Generate Services with Faker
puts "Generating Services with Faker..."
NUM_SERVICES.times do
  Service.create!(
    name: Faker::Commerce.product_name,
    description: Faker::Lorem.sentence
  )
end

# Generate Diseases with Faker
puts "Generating Diseases with Faker..."
NUM_DISEASES.times do
  Disease.create!(
    name: Faker::Science.element,
    symptoms: Faker::Lorem.sentence(word_count: 3),
    treatment: Faker::Lorem.sentence,
    prevalence: Faker::Number.between(from: 1, to: 100),
    description: Faker::Lorem.paragraph
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

# Create a default admin user (for development environment only)
if Rails.env.development?
  AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
end

puts "Database seeding with Faker completed!"
