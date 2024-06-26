# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_06_25_224705) do
  create_table "clinic_services", force: :cascade do |t|
    t.integer "clinic_id", null: false
    t.integer "service_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clinic_id"], name: "index_clinic_services_on_clinic_id"
    t.index ["service_id"], name: "index_clinic_services_on_service_id"
  end

  create_table "clinics", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "contact"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "disease_services", force: :cascade do |t|
    t.integer "disease_id", null: false
    t.integer "service_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["disease_id"], name: "index_disease_services_on_disease_id"
    t.index ["service_id"], name: "index_disease_services_on_service_id"
  end

  create_table "diseases", force: :cascade do |t|
    t.string "name"
    t.text "symptoms"
    t.text "treatment"
    t.string "prevalence"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "clinic_services", "clinics"
  add_foreign_key "clinic_services", "services"
  add_foreign_key "disease_services", "diseases"
  add_foreign_key "disease_services", "services"
end
