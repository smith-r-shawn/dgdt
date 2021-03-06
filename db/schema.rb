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

ActiveRecord::Schema.define(version: 20150914160827) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "disc_types", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "makes", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "logo_url",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "models", force: :cascade do |t|
    t.string   "name",                                 null: false
    t.integer  "make_id"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.decimal  "stability",    precision: 3, scale: 1
    t.integer  "speed"
    t.integer  "glide"
    t.integer  "fade"
    t.integer  "turn"
    t.integer  "disc_type_id"
  end

  add_index "models", ["make_id"], name: "index_models_on_make_id", using: :btree

  create_table "owns", force: :cascade do |t|
    t.integer  "person_id"
    t.integer  "model_id"
    t.integer  "inventory",  default: 0, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "owns", ["model_id"], name: "index_owns_on_model_id", using: :btree
  add_index "owns", ["person_id"], name: "index_owns_on_person_id", using: :btree

  create_table "people", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
