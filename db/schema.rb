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

ActiveRecord::Schema.define(version: 2021_03_16_224344) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chefs", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.string "email"
    t.text "bio"
    t.string "neighborhood"
    t.string "address"
    t.string "hours"
    t.string "cuisine"
    t.string "price_range"
    t.string "profile_photo"
    t.string "home_photo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "diners", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.string "email"
    t.string "location"
    t.string "profile_photo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "dishes", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "allergen"
    t.string "photo_url"
    t.string "price"
    t.bigint "chef_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["chef_id"], name: "index_dishes_on_chef_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.bigint "chef_id", null: false
    t.bigint "diner_id", null: false
    t.integer "party_size"
    t.string "date"
    t.string "time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["chef_id"], name: "index_reservations_on_chef_id"
    t.index ["diner_id"], name: "index_reservations_on_diner_id"
  end

  add_foreign_key "dishes", "chefs"
  add_foreign_key "reservations", "chefs"
  add_foreign_key "reservations", "diners"
end
