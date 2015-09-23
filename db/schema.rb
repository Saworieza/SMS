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

ActiveRecord::Schema.define(version: 20150923223450) do

  create_table "classrooms", force: :cascade do |t|
    t.string   "form"
    t.string   "stream"
    t.string   "classteacher"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "year"
  end

  create_table "departments", force: :cascade do |t|
    t.string   "name"
    t.string   "hod"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "disciplines", force: :cascade do |t|
    t.string   "incident"
    t.date     "incident_date"
    t.string   "student"
    t.integer  "adm_no"
    t.string   "form"
    t.text     "details"
    t.text     "action_taken"
    t.string   "email_subject"
    t.text     "email_message"
    t.string   "email_address"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "dormitories", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "matron"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "exams", force: :cascade do |t|
    t.string   "name"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "note"
    t.integer  "term"
    t.integer  "passmark"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "classroom"
  end

  create_table "library_books", force: :cascade do |t|
    t.string   "name"
    t.string   "author"
    t.text     "description"
    t.string   "publisher"
    t.string   "isbn"
    t.string   "status"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "classroom"
  end

  create_table "pay_fees", force: :cascade do |t|
    t.string   "student_name"
    t.integer  "adm_no"
    t.integer  "form"
    t.string   "stream"
    t.integer  "amount"
    t.string   "paid_by"
    t.string   "pay_method"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "pay_others", force: :cascade do |t|
    t.string   "student_name"
    t.integer  "adm_no"
    t.integer  "form"
    t.string   "stream"
    t.integer  "amount"
    t.string   "payment_for"
    t.string   "paid_by"
    t.string   "pay_method"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "fullname"
    t.date     "birthdate"
    t.string   "gender"
    t.string   "nationality"
    t.string   "form"
    t.string   "stream"
    t.string   "class_teacher"
    t.string   "address"
    t.integer  "phone_1"
    t.integer  "phone_2"
    t.string   "email"
    t.string   "town"
    t.string   "county"
    t.string   "image"
    t.string   "adm_no"
    t.string   "adm_date"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "name"
    t.string   "teacher"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "classroom"
  end

  create_table "tasks", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "priority"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.date     "dueDate"
    t.string   "assignedTo"
    t.string   "state"
    t.string   "attachment"
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "fullname"
    t.string   "employer"
    t.string   "employee_number"
    t.date     "employment_date"
    t.date     "birthdate"
    t.string   "marital_status"
    t.string   "nationality"
    t.string   "home_address"
    t.integer  "phone_1"
    t.integer  "phone_2"
    t.string   "email"
    t.string   "town"
    t.string   "county"
    t.text     "education"
    t.text     "certifications"
    t.text     "subjects"
    t.string   "image"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["username"], name: "index_users_on_username", unique: true

end
