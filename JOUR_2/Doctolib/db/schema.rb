# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_11_141428) do

  create_table "appointments", force: :cascade do |t|
    t.datetime "appointment_date"
    t.integer "physician_id"
    t.integer "patient_id"
    t.integer "city_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_appointments_on_city_id"
    t.index ["patient_id"], name: "index_appointments_on_patient_id"
    t.index ["physician_id"], name: "index_appointments_on_physician_id"
  end

  create_table "cities", force: :cascade do |t|
    t.integer "physician_id"
    t.integer "patient_id"
    t.integer "appointment_id"
    t.string "city_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["appointment_id"], name: "index_cities_on_appointment_id"
    t.index ["patient_id"], name: "index_cities_on_patient_id"
    t.index ["physician_id"], name: "index_cities_on_physician_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "city_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_patients_on_city_id"
  end

  create_table "physicians", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "postal_code"
    t.integer "city_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_physicians_on_city_id"
  end

  create_table "specialities", force: :cascade do |t|
    t.string "specialit"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
