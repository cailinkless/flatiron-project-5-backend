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

ActiveRecord::Schema.define(version: 2021_02_01_164454) do

  create_table "credits", force: :cascade do |t|
    t.integer "playbill_id", null: false
    t.string "name"
    t.string "role"
    t.text "bio"
    t.boolean "cast"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["playbill_id"], name: "index_credits_on_playbill_id"
  end

  create_table "playbills", force: :cascade do |t|
    t.string "title"
    t.text "about"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "showtimes", force: :cascade do |t|
    t.integer "playbill_id", null: false
    t.datetime "start"
    t.datetime "end"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["playbill_id"], name: "index_showtimes_on_playbill_id"
  end

  add_foreign_key "credits", "playbills"
  add_foreign_key "showtimes", "playbills"
end
