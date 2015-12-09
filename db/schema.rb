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

ActiveRecord::Schema.define(version: 20151209215647) do

  create_table "application_domains", force: :cascade do |t|
    t.integer  "student_id"
    t.string   "name"
    t.boolean  "custom",           default: false
    t.datetime "approval_date"
    t.string   "class_1"
    t.string   "class_2"
    t.string   "class_3"
    t.boolean  "class_1_complete", default: false
    t.boolean  "class_2_complete", default: false
    t.boolean  "class_3_complete", default: false
    t.boolean  "fulfilled",        default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "program_changes", force: :cascade do |t|
    t.integer  "student_id"
    t.string   "previous_program"
    t.datetime "application_date"
    t.boolean  "essay_complete",   default: false
    t.boolean  "accepted",         default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "senior_projects", force: :cascade do |t|
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: :cascade do |t|
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "year_level", default: 1
    t.boolean  "in_program", default: true
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
