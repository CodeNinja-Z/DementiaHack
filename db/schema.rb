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

ActiveRecord::Schema.define(version: 20151108031047) do

  create_table "actual_events", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "event_id"
  end

  create_table "caregivers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone_number"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "medications", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.float    "dosage_in_milligrams"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "scheduled_event_id"
  end

  add_index "medications", ["scheduled_event_id"], name: "index_medications_on_scheduled_event_id"

  create_table "scheduled_events", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "schedule_id"
    t.boolean  "successful"
    t.datetime "start_time"
    t.datetime "end_time"
  end

  add_index "scheduled_events", ["schedule_id"], name: "index_scheduled_events_on_schedule_id"

  create_table "schedules", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
