# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_24_171045) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bokkings", force: :cascade do |t|
    t.datetime "date"
    t.integer "price"
    t.string "location"
    t.boolean "confirmed", default: false
    t.bigint "request_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["request_id"], name: "index_bokkings_on_request_id"
  end

  create_table "quizzes", force: :cascade do |t|
    t.string "style"
    t.text "meaning"
    t.string "category"
    t.string "representation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_quizzes_on_user_id"
  end

  create_table "requests", force: :cascade do |t|
    t.bigint "quiz_id", null: false
    t.string "name"
    t.string "location"
    t.string "body_part"
    t.integer "size"
    t.string "style"
    t.text "description"
    t.bigint "user_id", null: false
    t.boolean "accepted", default: false
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["quiz_id"], name: "index_requests_on_quiz_id"
    t.index ["user_id"], name: "index_requests_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.boolean "artist", default: false
    t.string "style"
    t.integer "price"
    t.string "location"
    t.text "bio"
    t.integer "experience"
    t.text "inspiration"
    t.string "hobbies"
    t.string "social_media"
    t.string "shop"
    t.string "website"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bokkings", "requests"
  add_foreign_key "quizzes", "users"
  add_foreign_key "requests", "quizzes"
  add_foreign_key "requests", "users"
end
