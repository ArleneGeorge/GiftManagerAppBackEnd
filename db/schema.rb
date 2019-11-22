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

ActiveRecord::Schema.define(version: 2019_11_22_221310) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "friends", force: :cascade do |t|
    t.string "image_url"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "relationship"
    t.string "street"
    t.string "street2"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.string "cell_phone"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_friends_on_user_id"
  end

  create_table "gifts", force: :cascade do |t|
    t.bigint "friend_id", null: false
    t.string "link"
    t.string "image_url"
    t.string "name"
    t.string "note"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["friend_id"], name: "index_gifts_on_friend_id"
  end

  create_table "hollidays", force: :cascade do |t|
    t.bigint "friend_id", null: false
    t.boolean "christmas"
    t.boolean "hanukkah"
    t.boolean "kwanza"
    t.boolean "valentines"
    t.boolean "easter"
    t.integer "reminder_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["friend_id"], name: "index_hollidays_on_friend_id"
  end

  create_table "ocassions", force: :cascade do |t|
    t.bigint "friend_id", null: false
    t.string "occasion"
    t.string "month"
    t.string "day"
    t.string "year"
    t.integer "reminder_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["friend_id"], name: "index_ocassions_on_friend_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone_number"
    t.string "username"
    t.string "password_digest"
    t.string "avatar"
    t.boolean "admin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "friends", "users"
  add_foreign_key "gifts", "friends"
  add_foreign_key "hollidays", "friends"
  add_foreign_key "ocassions", "friends"
end
