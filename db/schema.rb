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

ActiveRecord::Schema.define(version: 20150506200607) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "street_sweeps", force: :cascade do |t|
    t.text "ward_section"
    t.text "dates"
    t.text "month"
  end

  create_table "user_sections", force: :cascade do |t|
    t.integer "user_id"
    t.integer "street_sweep_id"
  end

  add_index "user_sections", ["street_sweep_id"], name: "index_user_sections_on_street_sweep_id", using: :btree
  add_index "user_sections", ["user_id"], name: "index_user_sections_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.text     "name"
    t.text     "provider"
    t.text     "image_url"
    t.text     "uid"
    t.text     "token"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.text     "phone_number"
  end

end
