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

ActiveRecord::Schema.define(version: 20160115040758) do

  create_table "habits", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "user_id",     limit: 4
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "active",      limit: 1,   default: true
    t.integer  "habit_type",  limit: 4
  end

  create_table "icons", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "icon_path",  limit: 255
    t.integer  "habit_id",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.integer  "habit_id",   limit: 4
    t.boolean  "completed",  limit: 1
    t.date     "task_date"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "email",           limit: 255
    t.string   "password_digest", limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

end
