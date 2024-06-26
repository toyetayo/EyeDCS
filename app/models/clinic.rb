class Clinic < ApplicationRecord
  has_many :clinic_services
  has_many :services, through: :clinic_services

  validates :name, :address, :contact, presence: true
  validates :contact, format: { with: /\A\d{10}\z/, message: "must be 10 digits" }

end
