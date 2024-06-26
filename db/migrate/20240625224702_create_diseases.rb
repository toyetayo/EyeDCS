class CreateDiseases < ActiveRecord::Migration[7.1]
  def change
    create_table :diseases do |t|
      t.string :name
      t.text :symptoms
      t.text :treatment
      t.string :prevalence
      t.text :description

      t.timestamps
    end
  end
end
