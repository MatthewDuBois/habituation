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

ActiveRecord::Schema.define(version: 2019_03_20_200402) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "avatars", force: :cascade do |t|
    t.string "avatar_url"
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.integer "gold_total", default: 0
    t.integer "level", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "xp_total", default: 0
    t.string "avatar_class", default: "Neophyte"
    t.integer "physicality", default: 1
    t.integer "intelligence", default: 1
    t.integer "mindfulness", default: 1
    t.integer "humility", default: 1
    t.integer "intuition", default: 1
    t.integer "zen", default: 0
    t.integer "knowledge", default: 0
    t.integer "gratitude", default: 0
    t.integer "vigor", default: 0
  end

  create_table "habit_completeds", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "habit_id"
  end

  create_table "habits", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "active"
    t.integer "xp"
    t.integer "routine_time_increment"
    t.string "routine_time_quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "avatar_id"
    t.boolean "completed"
    t.integer "difficulty"
    t.integer "gold"
  end

  create_table "loots", force: :cascade do |t|
    t.string "name"
    t.integer "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
  end

  create_table "purchased_loots", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "avatar_id"
  end

  create_table "specializations", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "avatar_id"
  end

end
