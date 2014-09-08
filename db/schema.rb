# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140908025749) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "herbal_preparations", force: true do |t|
    t.integer  "herb_id"
    t.integer  "preparation_id"
    t.boolean  "favorite"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "herbal_properties", force: true do |t|
    t.integer "herb_id"
    t.integer "property_id"
    t.boolean "specific"
  end

  create_table "herbs", force: true do |t|
    t.integer  "part_id"
    t.integer  "plant_id"
    t.string   "time_to_collect"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parts", force: true do |t|
    t.string   "structure"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plants", force: true do |t|
    t.string   "common_name"
    t.text     "species"
    t.text     "contraindications"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
  end

  create_table "preparations", force: true do |t|
    t.string   "name"
    t.text     "recipe"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "properties", force: true do |t|
    t.string   "name"
    t.text     "definition"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username",        null: false
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
