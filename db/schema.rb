# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_08_19_054956) do
  create_table "books", charset: "utf8mb4", force: :cascade do |t|
    t.string "book_title", null: false
    t.string "author", null: false
    t.text "review"
    t.integer "rating", null: false
    t.date "registration_date", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "knittings", charset: "utf8mb4", force: :cascade do |t|
    t.string "work"
    t.text "recipe"
    t.text "yarn"
    t.string "hook_number"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "records", charset: "utf8mb4", force: :cascade do |t|
    t.date "record_date", null: false
    t.string "title", null: false
    t.text "record_memo", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_records_on_user_id"
  end

  create_table "rounds", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "course", null: false
    t.text "round_memo"
    t.date "round_date", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "total_strokes", default: 0, null: false
    t.integer "total_putts", default: 0, null: false
    t.index ["user_id"], name: "index_rounds_on_user_id"
  end

  create_table "score_details", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "score_id", null: false
    t.integer "hole_number", null: false
    t.integer "strokes", null: false
    t.integer "putts", null: false
    t.text "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["score_id"], name: "index_score_details_on_score_id"
  end

  create_table "scores", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "round_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["round_id"], name: "index_scores_on_round_id"
  end

  create_table "targets", charset: "utf8mb4", force: :cascade do |t|
    t.integer "target_score", null: false
    t.date "deadline", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_targets_on_user_id"
  end

  create_table "users", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", null: false
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

  add_foreign_key "records", "users"
  add_foreign_key "rounds", "users"
  add_foreign_key "score_details", "scores"
  add_foreign_key "scores", "rounds"
  add_foreign_key "targets", "users"
end
