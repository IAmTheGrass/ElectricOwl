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

ActiveRecord::Schema.define(version: 20160414032535) do

  create_table "eoapps", force: :cascade do |t|
    t.string   "name"
    t.string   "frl"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "eomodel_id"
  end

  create_table "eocolcols", force: :cascade do |t|
    t.integer  "eoobject_id"
    t.integer  "eocolumn_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "eocolumns", force: :cascade do |t|
    t.string   "name"
    t.string   "coltype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "eodatcols", force: :cascade do |t|
    t.integer  "eocolumn_id"
    t.integer  "eostoredat_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "eodivs", force: :cascade do |t|
    t.integer  "eopartial_id"
    t.integer  "eoview_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "eomodels", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "eoobjcols", force: :cascade do |t|
    t.integer  "eomodel_id"
    t.integer  "eoobject_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "eoobjects", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "eopagcols", force: :cascade do |t|
    t.integer  "eoapp_id"
    t.integer  "eopage_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "eopages", force: :cascade do |t|
    t.string   "name"
    t.integer  "eoview_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "eopartials", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "eostoredats", force: :cascade do |t|
    t.string   "eoinput"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "eoviews", force: :cascade do |t|
    t.integer  "divnum"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
