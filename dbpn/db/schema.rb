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

ActiveRecord::Schema.define(version: 20150725053332) do

  create_table "animals", force: :cascade do |t|
    t.integer  "listname_id", limit: 4
    t.integer  "breed_id",    limit: 4
    t.string   "aname",       limit: 255
    t.string   "breed",       limit: 255
    t.string   "dates",       limit: 255
    t.string   "notes",       limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "animals", ["breed_id"], name: "index_animals_on_breed_id", using: :btree
  add_index "animals", ["listname_id"], name: "index_animals_on_listname_id", using: :btree

  create_table "breeds", force: :cascade do |t|
    t.string   "breed",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "listnames", force: :cascade do |t|
    t.string   "lname",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "animals", "breeds"
  add_foreign_key "animals", "listnames"
end
