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

ActiveRecord::Schema.define(version: 2022_10_26_001000) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applicants", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.bigint "user_id"
    t.bigint "positions_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["positions_id"], name: "index_applicants_on_positions_id"
    t.index ["user_id"], name: "index_applicants_on_user_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_companies_on_user_id"
  end

  create_table "positions", force: :cascade do |t|
    t.string "name"
    t.integer "career"
    t.integer "contract"
    t.boolean "remote"
    t.string "city"
    t.string "state"
    t.text "summary"
    t.text "description"
    t.boolean "publish"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_positions_on_company_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "applicants", "positions", column: "positions_id"
  add_foreign_key "applicants", "users"
  add_foreign_key "companies", "users"
  add_foreign_key "positions", "companies"
end
