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

ActiveRecord::Schema.define(version: 20160107015158) do

  create_table "audits", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "advisor_id"
    t.datetime "date_performed"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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
    t.string   "company_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cop_outs", force: :cascade do |t|
    t.integer  "student_id"
    t.string   "code"
    t.string   "new_plan"
    t.string   "effective_term"
    t.string   "application_status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: :cascade do |t|
    t.integer  "advisor_id"
    t.string   "email"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "student_type",          default: "FR"
    t.string   "status",                default: "Active"
    t.string   "com_sub_plan",          default: "t"
    t.string   "first_enrolled_term"
    t.string   "expected_graduation"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "cop_in",                default: false
    t.string   "cop_in_effective_term"
  end

  create_table "transactions", force: :cascade do |t|
    t.integer  "student_id"
    t.string   "message"
    t.integer  "loggable_id"
    t.string   "loggable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "action"
  end

  add_index "transactions", ["loggable_id"], name: "index_transactions_on_loggable_id"
  add_index "transactions", ["student_id"], name: "index_transactions_on_student_id"

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
