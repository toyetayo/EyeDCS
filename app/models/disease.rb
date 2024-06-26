class Disease < ApplicationRecord
  has_many :disease_services
  has_many :services, through: :disease_services

  validates :name, :symptoms, :treatment, :prevalence, :description, presence: true


end
