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

ActiveRecord::Schema.define(version: 20240419085240) do

  create_table "healths", force: :cascade do |t|
    t.integer "health_id", limit: 8
    t.string "health_title"
    t.time "wake_up_time_at"
    t.time "bedtime_at"
    t.string "stature"
    t.string "body_weight"
    t.text "health_detail"
    t.text "health_comment"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "start_time"
    t.index ["user_id", "created_at"], name: "index_healths_on_user_id_and_created_at"
    t.index ["user_id"], name: "index_healths_on_user_id"
  end

  create_table "homes", force: :cascade do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reports", force: :cascade do |t|
    t.integer "report_id", limit: 8
    t.string "report_title"
    t.text "report_detail"
    t.text "report_comment"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "start_time"
    t.index ["user_id", "created_at"], name: "index_reports_on_user_id_and_created_at"
    t.index ["user_id"], name: "index_reports_on_user_id"
  end

  create_table "stresses", force: :cascade do |t|
    t.integer "stress_id", limit: 8
    t.text "stress_comment"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "stress_response"
    t.text "reason_for_yes"
    t.text "reason_for_no"
    t.boolean "task_response"
    t.text "task_comment"
    t.boolean "task_response_plan"
    t.boolean "stress_response_sleep"
    t.boolean "stress_response_exercise"
    t.text "task_reason_for_yes"
    t.text "task_reason_for_no"
    t.text "stress_reason_for_yes"
    t.text "stress_reason_for_no"
    t.text "stress_reason_yes"
    t.text "stress_reason_no"
    t.index ["user_id", "created_at"], name: "index_stresses_on_user_id_and_created_at"
    t.index ["user_id"], name: "index_stresses_on_user_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.integer "task_id", limit: 8
    t.string "task_title"
    t.text "task_detail"
    t.text "task_comment"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "start_time"
    t.index ["user_id", "created_at"], name: "index_tasks_on_user_id_and_created_at"
    t.index ["user_id"], name: "index_tasks_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider"
    t.string "uid"
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
