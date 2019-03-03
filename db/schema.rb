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

ActiveRecord::Schema.define(version: 2019_03_03_040751) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

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
    t.integer "year"
    t.text "description"
    t.string "web_url"
    t.boolean "registeration", null: false
    t.bigint "master_id", null: false
    t.bigint "pa_id", null: false
    t.string "type"
    t.index ["master_id"], name: "index_bands_on_master_id"
    t.index ["pa_id"], name: "index_bands_on_pa_id"
  end

  create_table "comments", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "presentation_id", null: false
    t.text "comment", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["presentation_id"], name: "index_comments_on_presentation_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "documents", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.bigint "presentation_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["presentation_id"], name: "index_documents_on_presentation_id"
  end

  create_table "event_entries", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "band_id", null: false
    t.bigint "event_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["band_id"], name: "index_event_entries_on_band_id"
    t.index ["event_id"], name: "index_event_entries_on_event_id"
    t.index ["user_id"], name: "index_event_entries_on_user_id"
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
    t.bigint "period_id", null: false
    t.integer "order"
    t.text "remark"
    t.string "pa_attendance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "room_id"
    t.integer "status", default: 0
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

  create_table "presentation_hosts", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "presentation_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["presentation_id"], name: "index_presentation_hosts_on_presentation_id"
    t.index ["user_id"], name: "index_presentation_hosts_on_user_id"
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

  create_table "reviews", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "band_id", null: false
    t.bigint "event_id", null: false
    t.text "content", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["band_id"], name: "index_reviews_on_band_id"
    t.index ["event_id"], name: "index_reviews_on_event_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "room_usages", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "band_id"
    t.bigint "section_id"
    t.bigint "period_id", null: false
    t.date "date", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "room_id", null: false
    t.index ["band_id"], name: "index_room_usages_on_band_id"
    t.index ["period_id"], name: "index_room_usages_on_period_id"
    t.index ["room_id"], name: "index_room_usages_on_room_id"
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
    t.bigint "section_id", null: false
    t.bigint "authority_id", null: false
    t.integer "gender"
    t.index ["authority_id"], name: "index_users_on_authority_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["section_id"], name: "index_users_on_section_id"
  end

  add_foreign_key "band_members", "bands"
  add_foreign_key "band_members", "users"
  add_foreign_key "bands", "users", column: "master_id"
  add_foreign_key "bands", "users", column: "pa_id"
  add_foreign_key "comments", "presentations"
  add_foreign_key "comments", "users"
  add_foreign_key "documents", "presentations"
  add_foreign_key "event_entries", "bands"
  add_foreign_key "event_entries", "events"
  add_foreign_key "event_entries", "users"
  add_foreign_key "events", "users", column: "host_id"
  add_foreign_key "mics", "bands"
  add_foreign_key "mics", "periods"
  add_foreign_key "mics", "rooms"
  add_foreign_key "mics", "users"
  add_foreign_key "presentation_hosts", "presentations"
  add_foreign_key "presentation_hosts", "users"
  add_foreign_key "presentations", "events"
  add_foreign_key "presentations", "users", column: "host_id"
  add_foreign_key "reviews", "bands"
  add_foreign_key "reviews", "events"
  add_foreign_key "reviews", "users"
  add_foreign_key "room_usages", "bands"
  add_foreign_key "room_usages", "periods"
  add_foreign_key "room_usages", "rooms"
  add_foreign_key "room_usages", "sections"
  add_foreign_key "room_usages", "users"
  add_foreign_key "sections", "authorities"
  add_foreign_key "sections", "users", column: "leader_id"
  add_foreign_key "users", "authorities"
  add_foreign_key "users", "sections"
end
