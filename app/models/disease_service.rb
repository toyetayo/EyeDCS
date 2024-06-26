class DiseaseService < ApplicationRecord
  belongs_to :disease
  belongs_to :service

  validates :disease_id, presence: true
  validates :service_id, presence: true
  validates :disease_id, uniqueness: { scope: :service_id, message: "and service combination must be unique" }


end
