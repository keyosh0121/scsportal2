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

ActiveRecord::Schema.define(version: 2019_01_07_103258) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authorities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "band_members", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "band_id", null: false
    t.integer "mic_number", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["band_id"], name: "index_band_members_on_band_id"
    t.index ["user_id"], name: "index_band_members_on_user_id"
  end

  create_table "bands", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name", null: false
    t.integer "year", null: false
    t.text "description"
    t.text "feature"
    t.string "web_url"
    t.integer "band_type", null: false
    t.boolean "registeration", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "name", null: false
    t.date "date"
    t.time "start_time"
    t.time "end_time"
    t.boolean "entry_requirement", default: false, null: false
    t.string "place"
    t.time "entry_start"
    t.time "entry_end"
    t.bigint "host_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["host_id"], name: "index_events_on_host_id"
  end

  create_table "mics", force: :cascade do |t|
    t.date "date", null: false
    t.time "start_time"
    t.time "end_time"
    t.bigint "user_id", null: false
    t.bigint "band_id", null: false
    t.bigint "room_id", null: false
    t.bigint "period_id", null: false
    t.integer "order"
    t.text "remark"
    t.string "status"
    t.string "pa_attendance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["band_id"], name: "index_mics_on_band_id"
    t.index ["period_id"], name: "index_mics_on_period_id"
    t.index ["room_id"], name: "index_mics_on_room_id"
    t.index ["user_id"], name: "index_mics_on_user_id"
  end

  create_table "periods", force: :cascade do |t|
    t.string "name", null: false
    t.time "start_time", null: false
    t.time "end_time", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "presentations", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "event_id", null: false
    t.bigint "host_id"
    t.time "length"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_presentations_on_event_id"
    t.index ["host_id"], name: "index_presentations_on_host_id"
  end

  create_table "room_usages", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "band_id"
    t.bigint "section_id"
    t.bigint "period_id", null: false
    t.date "date", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["band_id"], name: "index_room_usages_on_band_id"
    t.index ["period_id"], name: "index_room_usages_on_period_id"
    t.index ["section_id"], name: "index_room_usages_on_section_id"
    t.index ["user_id"], name: "index_room_usages_on_user_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name", null: false
    t.integer "room_type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sections", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "authority_id"
    t.bigint "leader_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["authority_id"], name: "index_sections_on_authority_id"
    t.index ["leader_id"], name: "index_sections_on_leader_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "encrypted_password", null: false
    t.integer "year", null: false
    t.string "uni", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "band_members", "bands"
  add_foreign_key "band_members", "users"
  add_foreign_key "events", "users", column: "host_id"
  add_foreign_key "mics", "bands"
  add_foreign_key "mics", "periods"
  add_foreign_key "mics", "rooms"
  add_foreign_key "mics", "users"
  add_foreign_key "presentations", "events"
  add_foreign_key "presentations", "users", column: "host_id"
  add_foreign_key "room_usages", "bands"
  add_foreign_key "room_usages", "periods"
  add_foreign_key "room_usages", "sections"
  add_foreign_key "room_usages", "users"
  add_foreign_key "sections", "authorities"
  add_foreign_key "sections", "users", column: "leader_id"
end
