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

ActiveRecord::Schema[7.0].define(version: 2023_02_03_234734) do
  create_table "owner_pets", force: :cascade do |t|
    t.integer "owner_id"
    t.integer "pet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_id"], name: "index_owner_pets_on_owner_id"
    t.index ["pet_id"], name: "index_owner_pets_on_pet_id"
  end

  create_table "owners", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pets", force: :cascade do |t|
    t.string "name"
    t.string "species"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "petsitter_pets", force: :cascade do |t|
    t.integer "petsitter_id"
    t.integer "pet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pet_id"], name: "index_petsitter_pets_on_pet_id"
    t.index ["petsitter_id"], name: "index_petsitter_pets_on_petsitter_id"
  end

  create_table "petsitters", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.date "scheduled_date"
    t.integer "pet_id"
    t.integer "petsitter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pet_id"], name: "index_schedules_on_pet_id"
    t.index ["petsitter_id"], name: "index_schedules_on_petsitter_id"
  end

  add_foreign_key "owner_pets", "owners"
  add_foreign_key "owner_pets", "pets"
  add_foreign_key "petsitter_pets", "pets"
  add_foreign_key "petsitter_pets", "petsitters"
  add_foreign_key "schedules", "pets"
  add_foreign_key "schedules", "petsitters"
end
