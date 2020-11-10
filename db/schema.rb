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

ActiveRecord::Schema.define(version: 2020_09_11_015553) do

  create_table "books", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "title", null: false
    t.string "author"
    t.integer "genre_id", null: false
    t.text "output_tweets1"
    t.text "output_tweets2"
    t.text "output_tweets3"
    t.text "output_tweets4"
    t.text "output_tweets5"
    t.text "output_tweets6"
    t.text "output_tweets7"
    t.text "output_tweets8"
    t.text "output_tweets9"
    t.text "output_tweets10"
    t.text "output_tweets11"
    t.text "output_tweets12"
    t.text "output_tweets13"
    t.text "output_tweets14"
    t.text "output_tweets15"
    t.text "output_tweets16"
    t.text "output_tweets17"
    t.text "output_tweets18"
    t.text "output_tweets19"
    t.text "output_tweets20"
    t.text "derection"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_books_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "nickname", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
