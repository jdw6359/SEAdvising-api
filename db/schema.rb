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

ActiveRecord::Schema.define(version: 20151211222553) do

  create_table "change_program_out", force: :cascade do |t|
    t.integer  "student_id"
    t.string   "code"
    t.string   "new_plan"
    t.string   "effective_term"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "coops", force: :cascade do |t|
    t.integer  "student_id"
    t.string   "term"
    t.integer  "weeks"
    t.boolean  "exception"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: :cascade do |t|
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "advisor"
    t.string   "student_type",        default: "FR"
    t.string   "status",              default: "Active"
    t.string   "com_sub_plan",        default: "t"
    t.string   "first_enrolled_term"
    t.string   "expected_graduation"
    t.datetime "last_audit"
    t.integer  "year_level",          default: 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "type"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_reset_token"
  end

end
