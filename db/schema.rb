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

ActiveRecord::Schema.define(version: 2019_07_15_233949) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_squads", force: :cascade do |t|
    t.bigint "team_id"
    t.bigint "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_active_squads_on_student_id"
    t.index ["team_id"], name: "index_active_squads_on_team_id"
  end

  create_table "coaches", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "privilege"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seasons", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sports", force: :cascade do |t|
    t.string "name"
    t.bigint "season_id"
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["season_id"], name: "index_sports_on_season_id"
  end

  create_table "students", force: :cascade do |t|
    t.bigint "team_id"
    t.string "first_name"
    t.string "last_name"
    t.string "year_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_students_on_team_id"
  end

  create_table "team_students", force: :cascade do |t|
    t.bigint "student_id"
    t.bigint "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_team_students_on_student_id"
    t.index ["team_id"], name: "index_team_students_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.bigint "sport_id"
    t.bigint "coach_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coach_id"], name: "index_teams_on_coach_id"
    t.index ["sport_id"], name: "index_teams_on_sport_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.bigint "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_users_on_role_id"
  end

  add_foreign_key "active_squads", "students"
  add_foreign_key "active_squads", "teams"
  add_foreign_key "sports", "seasons"
  add_foreign_key "students", "teams"
  add_foreign_key "team_students", "students"
  add_foreign_key "team_students", "teams"
  add_foreign_key "teams", "coaches"
  add_foreign_key "teams", "sports"
end
