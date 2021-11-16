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

ActiveRecord::Schema.define(version: 2021_11_16_102148) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "arenas", force: :cascade do |t|
    t.string "address"
    t.integer "capacity"
    t.text "description"
    t.bigint "fighter_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["fighter_id"], name: "index_arenas_on_fighter_id"
  end

  create_table "fighters", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "age"
    t.string "nickname"
    t.integer "weight"
    t.integer "height"
    t.integer "arm_range"
    t.index ["email"], name: "index_fighters_on_email", unique: true
    t.index ["reset_password_token"], name: "index_fighters_on_reset_password_token", unique: true
  end

  create_table "fights", force: :cascade do |t|
    t.integer "duration"
    t.integer "number_of_fighters"
    t.boolean "weapons_allowed"
    t.date "approved_at"
    t.bigint "fighter_id", null: false
    t.bigint "arena_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "date"
    t.index ["arena_id"], name: "index_fights_on_arena_id"
    t.index ["fighter_id"], name: "index_fights_on_fighter_id"
  end

  add_foreign_key "arenas", "fighters"
  add_foreign_key "fights", "arenas"
  add_foreign_key "fights", "fighters"
end
