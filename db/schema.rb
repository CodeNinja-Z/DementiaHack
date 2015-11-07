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

ActiveRecord::Schema.define(version: 20151107170656) do

  create_table "caregivers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "patinet_id"
    t.integer  "phone_num"
  end

  create_table "clinicians", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "role"
    t.string   "institution"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "med_events", force: :cascade do |t|
    t.integer  "med_id"
    t.time     "time_of_event"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "med_scheds", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "dosage"
    t.time     "expected_time"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                           null: false
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_me_token"], name: "index_users_on_remember_me_token"
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token"

end
