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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130415024933) do

  create_table "basics", :force => true do |t|
    t.text     "people"
    t.text     "relationships"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "people", :force => true do |t|
    t.string   "name"
    t.string   "nickname"
    t.string   "gender"
    t.date     "birthday"
    t.string   "house"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "email"
    t.string   "twitter"
    t.string   "facebook"
    t.string   "okcupid"
    t.string   "fetlife"
    t.text     "note"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "relationships", :force => true do |t|
    t.integer  "source"
    t.integer  "target"
    t.date     "since"
    t.date     "until"
    t.string   "kind"
    t.boolean  "married"
    t.boolean  "fluidbonded"
    t.boolean  "sexual"
    t.boolean  "kinky"
    t.text     "note"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

end