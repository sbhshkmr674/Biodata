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

ActiveRecord::Schema.define(version: 20161221070849) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "educations", force: :cascade do |t|
    t.string   "s_name"
    t.string   "y_passout"
    t.string   "b_name"
    t.string   "o_marks"
    t.string   "division"
    t.integer  "infos"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "educations", ["infos"], name: "index_educations_on_infos", using: :btree

  create_table "esearches", force: :cascade do |t|
    t.string   "y_passout"
    t.string   "s_name"
    t.string   "b_name"
    t.string   "o_marks"
    t.string   "division"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "infos", force: :cascade do |t|
    t.string   "f_name"
    t.string   "l_name"
    t.date     "dob"
    t.string   "state"
    t.string   "country"
    t.string   "zip_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "distric"
  end

  create_table "parents", force: :cascade do |t|
    t.string   "name"
    t.string   "occupation"
    t.string   "salary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", force: :cascade do |t|
    t.string   "d_card"
    t.string   "expiry_date"
    t.string   "ccv_no"
    t.string   "bank_name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "psearches", force: :cascade do |t|
    t.string   "name"
    t.string   "occupation"
    t.string   "salary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "searches", force: :cascade do |t|
    t.string   "f_name"
    t.string   "l_name"
    t.date     "dob"
    t.string   "country"
    t.string   "distric"
    t.string   "zip_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "state"
  end

end
