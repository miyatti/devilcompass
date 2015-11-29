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

ActiveRecord::Schema.define(version: 20151125222106) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.integer  "value"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "question_id"
  end

  add_index "answers", ["user_id"], name: "index_answers_on_user_id", using: :btree

  create_table "devils", force: :cascade do |t|
    t.string   "name"
    t.integer  "LC"
    t.integer  "LD"
    t.integer  "PV"
    t.integer  "OP"
    t.text     "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "elements", force: :cascade do |t|
    t.integer  "LC"
    t.integer  "LD"
    t.text     "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  create_table "ideologies", force: :cascade do |t|
    t.string   "name"
    t.integer  "A"
    t.integer  "B"
    t.integer  "C"
    t.integer  "D"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "note"
    t.text     "NoteA"
    t.text     "NoteB"
    t.text     "NoteC"
    t.text     "NoteD"
  end

  create_table "questions", force: :cascade do |t|
    t.integer  "kind"
    t.integer  "aspect"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "name"
  end

  create_table "surveys", force: :cascade do |t|
    t.integer  "q01"
    t.integer  "q02"
    t.integer  "q03"
    t.integer  "q04"
    t.integer  "q05"
    t.integer  "q06"
    t.integer  "q07"
    t.integer  "q08"
    t.integer  "q09"
    t.integer  "q10"
    t.integer  "q11"
    t.integer  "q12"
    t.integer  "q13"
    t.integer  "q14"
    t.integer  "q15"
    t.integer  "q16"
    t.integer  "A"
    t.integer  "B"
    t.integer  "C"
    t.integer  "D"
    t.string   "result"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tempers", force: :cascade do |t|
    t.string   "name"
    t.integer  "PV"
    t.integer  "OP"
    t.text     "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.float    "A"
    t.float    "B"
    t.float    "C"
    t.float    "D"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "ideology_id"
    t.integer  "element_id"
    t.integer  "temper_id"
    t.integer  "devil_id"
  end

end
