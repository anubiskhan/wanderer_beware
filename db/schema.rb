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

ActiveRecord::Schema.define(version: 20180404015849) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "enemies", force: :cascade do |t|
    t.string "name"
    t.integer "health"
    t.integer "offense"
    t.integer "defense"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "item_type"
    t.integer "offense"
    t.integer "defense"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "professions", force: :cascade do |t|
    t.string "name"
    t.integer "offense"
    t.integer "defense"
    t.integer "health"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stories", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "story_enemies", force: :cascade do |t|
    t.bigint "story_id"
    t.bigint "enemy_id"
    t.index ["enemy_id"], name: "index_story_enemies_on_enemy_id"
    t.index ["story_id"], name: "index_story_enemies_on_story_id"
  end

  create_table "story_items", force: :cascade do |t|
    t.bigint "story_id"
    t.bigint "item_id"
    t.index ["item_id"], name: "index_story_items_on_item_id"
    t.index ["story_id"], name: "index_story_items_on_story_id"
  end

  create_table "user_items", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "item_id"
    t.index ["item_id"], name: "index_user_items_on_item_id"
    t.index ["user_id"], name: "index_user_items_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role", default: 0
    t.bigint "profession_id"
    t.index ["profession_id"], name: "index_users_on_profession_id"
  end

  add_foreign_key "story_enemies", "enemies"
  add_foreign_key "story_enemies", "stories"
  add_foreign_key "story_items", "items"
  add_foreign_key "story_items", "stories"
  add_foreign_key "user_items", "items"
  add_foreign_key "user_items", "users"
  add_foreign_key "users", "professions"
end
