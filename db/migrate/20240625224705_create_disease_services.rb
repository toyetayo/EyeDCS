class CreateDiseaseServices < ActiveRecord::Migration[7.1]
  def change
    create_table :disease_services do |t|
      t.references :disease, null: false, foreign_key: true
      t.references :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
