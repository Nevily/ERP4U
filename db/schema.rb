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

ActiveRecord::Schema.define(version: 20140903135751) do

  create_table "branches", force: true do |t|
    t.string   "title",                      null: false
    t.boolean  "valid",      default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "erp_systems", force: true do |t|
    t.string   "title",                      null: false
    t.boolean  "valid",      default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "improve_processes", force: true do |t|
    t.string   "title",                      null: false
    t.boolean  "valid",      default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inventary_systems", force: true do |t|
    t.string   "title",                      null: false
    t.boolean  "valid",      default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "logistics_systems", force: true do |t|
    t.string   "title",                      null: false
    t.boolean  "valid",      default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "provinces", force: true do |t|
    t.string   "title",                      null: false
    t.boolean  "valid",      default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "salary_systems", force: true do |t|
    t.string   "title",                      null: false
    t.boolean  "valid",      default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.string   "company_name"
    t.string   "cell_phone"
    t.string   "local_phone"
    t.string   "company_description"
    t.string   "branch_id"
    t.string   "province_id"
    t.string   "erp_system_id"
    t.string   "inventary_system_id"
    t.string   "salary_system_id"
    t.string   "logitics_system_id"
    t.string   "improve_processes_id"
  end

  add_index "users", ["company_name"], name: "index_users_on_company_name", unique: true
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["username"], name: "index_users_on_username", unique: true

end
