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

ActiveRecord::Schema[7.2].define(version: 2024_12_29_115421) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "api_v1_academic_years", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "label", null: false
    t.string "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "api_v1_administration_details", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "students_id", null: false
    t.string "student_administrations_id"
    t.string "label"
    t.string "desc"
    t.integer "fee", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "api_v1_classroom_members", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "classrooms_id", null: false
    t.string "student_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "api_v1_classrooms", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "teachers_id", null: false
    t.string "academic_years_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "api_v1_periodes", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "label", null: false
    t.string "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "api_v1_raports", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "teachers_id", null: false
    t.string "subjects_id", null: false
    t.string "students_id", null: false
    t.string "semeters_id", null: false
    t.string "classroom_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "api_v1_records", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "classroom_members_id", null: false
    t.string "student_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "api_v1_roles", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "user_id", null: false
    t.string "role", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "api_v1_semester_records", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "records_id", null: false
    t.string "semesters_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "api_v1_semesters", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "value", default: "1", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "api_v1_student_administrations", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "students_id", null: false
    t.string "periodes_id", null: false
    t.integer "total_fees", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "api_v1_students", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "number", null: false
    t.string "name", null: false
    t.string "identity_id", null: false
    t.string "periodes_id", null: false
    t.string "semesters_id", null: false
    t.boolean "is_active", default: true, null: false
    t.date "inactive_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "api_v1_subjects", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name", null: false
    t.string "academic_years_id", null: false
    t.integer "min_score", default: 0
    t.string "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "api_v1_teacher_subjects", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "teachers_id", null: false
    t.string "subjects_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "api_v1_teachers", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "number", null: false
    t.string "name", null: false
    t.string "identity_id", null: false
    t.boolean "is_active", default: true, null: false
    t.date "inactive_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
