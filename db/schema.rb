# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_26_124559) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.datetime "date"
    t.string "service"
    t.integer "appt_length"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "dentist_id"
    t.bigint "patient_id"
    t.index ["dentist_id"], name: "index_appointments_on_dentist_id"
    t.index ["patient_id"], name: "index_appointments_on_patient_id"
  end

  create_table "dental_offices", force: :cascade do |t|
    t.string "name"
    t.string "street_address"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.string "insurance_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dentists", force: :cascade do |t|
    t.string "name"
    t.string "discipline"
    t.integer "sex"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "dental_office_id"
    t.index ["dental_office_id"], name: "index_dentists_on_dental_office_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "name"
    t.string "insurance_type"
    t.integer "sex"
    t.boolean "preexisting_conditions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "appointments", "dentists"
  add_foreign_key "appointments", "patients"
  add_foreign_key "dentists", "dental_offices"
end
