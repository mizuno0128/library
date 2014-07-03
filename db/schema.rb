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

ActiveRecord::Schema.define(version: 20140703074338) do

  create_table "book_records", force: true do |t|
    t.date     "lend_date"
    t.date     "return_date"
    t.boolean  "flag"
    t.integer  "user_id"
    t.integer  "book_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "book_records", ["book_id"], name: "index_book_records_on_book_id"
  add_index "book_records", ["user_id"], name: "index_book_records_on_user_id"

  create_table "books", force: true do |t|
    t.string   "name"
    t.string   "author"
    t.string   "company"
    t.integer  "code"
    t.date     "publish_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.integer  "tell"
    t.integer  "code"
    t.string   "address"
    t.date     "birthday"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password"
  end

end
