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

ActiveRecord::Schema.define(version: 20160218135347) do

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

  create_table "notes", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "user_id"
    t.string   "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "notes", ["student_id"], name: "index_notes_on_student_id"
  add_index "notes", ["user_id"], name: "index_notes_on_user_id"

  create_table "posts", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "posts", ["user_id"], name: "index_posts_on_user_id"

  create_table "senior_projects", force: :cascade do |t|
    t.integer  "student_id"
    t.string   "status"
    t.string   "end_term"
    t.string   "cert_term_projected"
    t.string   "cert_term_certified"
    t.string   "ceremony_term"
    t.boolean  "grad_app_submitted"
    t.datetime "grad_app_submitted_date"
    t.boolean  "email1_sent"
    t.boolean  "email2_sent"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "senior_projects", ["student_id"], name: "index_senior_projects_on_student_id"

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
    t.boolean  "red_flag_label",        default: false,    null: false
    t.boolean  "event_attendee_label",  default: false,    null: false
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

  add_index "transactions", ["created_at"], name: "index_transactions_on_created_at"
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
