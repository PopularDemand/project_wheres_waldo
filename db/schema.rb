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

ActiveRecord::Schema.define(version: 20170117175213) do

  create_table "characters", force: :cascade do |t|
    t.string   "name"
    t.string   "thumb_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "characters_photos", force: :cascade do |t|
    t.integer  "character_id"
    t.integer  "photo_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["photo_id", "character_id"], name: "index_characters_photos_on_photo_id_and_character_id", unique: true
  end

  create_table "photos", force: :cascade do |t|
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.integer  "character_id"
    t.integer  "photo_id"
    t.integer  "x"
    t.integer  "y"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["character_id"], name: "index_tags_on_character_id"
    t.index ["photo_id"], name: "index_tags_on_photo_id"
  end

end
