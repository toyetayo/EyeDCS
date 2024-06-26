class ClinicService < ApplicationRecord
  belongs_to :clinic
  belongs_to :service

  validates :clinic_id, presence: true
  validates :service_id, presence: true
  validates :clinic_id, uniqueness: { scope: :service_id, message: "and service combination must be unique" }
end
