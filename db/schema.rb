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

ActiveRecord::Schema.define(version: 2018_05_31_140056) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attractions", force: :cascade do |t|
    t.string "title"
    t.string "photo"
    t.string "address"
    t.string "status"
    t.float "longitude"
    t.float "latitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.integer "duration"
  end

  create_table "steps", force: :cascade do |t|
    t.bigint "user_tour_id"
    t.bigint "tour_attraction_id"
    t.string "completed", default: "false"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tour_attraction_id"], name: "index_steps_on_tour_attraction_id"
    t.index ["user_tour_id"], name: "index_steps_on_user_tour_id"
  end

  create_table "tour_attractions", force: :cascade do |t|
    t.bigint "tour_id"
    t.bigint "attraction_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["attraction_id"], name: "index_tour_attractions_on_attraction_id"
    t.index ["tour_id"], name: "index_tour_attractions_on_tour_id"
  end

  create_table "tours", force: :cascade do |t|
    t.string "title"
    t.integer "duration"
    t.string "photo"
    t.string "description"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "city"
  end

  create_table "user_tours", force: :cascade do |t|
    t.string "status"
    t.bigint "user_id"
    t.bigint "tour_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tour_id"], name: "index_user_tours_on_tour_id"
    t.index ["user_id"], name: "index_user_tours_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "steps", "tour_attractions"
  add_foreign_key "steps", "user_tours"
  add_foreign_key "tour_attractions", "attractions"
  add_foreign_key "tour_attractions", "tours"
  add_foreign_key "user_tours", "tours"
  add_foreign_key "user_tours", "users"
end
