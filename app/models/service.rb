class Service < ApplicationRecord
  has_many :clinic_services
  has_many :clinics, through: :clinic_services

  has_many :disease_services
  has_many :diseases, through: :disease_services

  validates :name, :description, presence: true

end
