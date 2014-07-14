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

ActiveRecord::Schema.define(version: 20140714142434) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "installation_details", force: true do |t|
    t.integer  "home_type_id"
    t.integer  "num_rooms"
    t.integer  "num_ppl"
    t.float    "lights_per_room"
    t.string   "photo"
    t.float    "efficiency"
    t.integer  "light_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "installation_details", ["home_type_id"], name: "index_installation_details_on_home_type_id", using: :btree
  add_index "installation_details", ["light_type_id"], name: "index_installation_details_on_light_type_id", using: :btree

  create_table "light_types", force: true do |t|
    t.string   "name"
    t.float    "efficiency"
    t.string   "photo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prelaunch_contacts", force: true do |t|
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "type_homes", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
