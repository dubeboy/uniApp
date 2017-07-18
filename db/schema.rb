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

ActiveRecord::Schema.define(version: 20170718133916) do

  create_table "companies", force: :cascade do |t|
    t.string "c_name"
    t.string "c_location"
    t.string "c_email"
    t.string "c_password"
    t.integer "c_contact_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_salt"
    t.string "password_hash"
    t.string "c_number"
  end

  create_table "job_seekers", force: :cascade do |t|
    t.string "j_email"
    t.string "j_username"
    t.string "j_firstname"
    t.string "j_lastname"
    t.string "j_password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_salt"
    t.string "password_hash"
  end

end
