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

ActiveRecord::Schema[7.0].define(version: 2023_08_19_105816) do
  create_table "absences", id: false, force: :cascade do |t|
    t.string "CFprof"
    t.string "CFstudent"
    t.datetime "date"
    t.string "school_code"
    t.string "class_code"
    t.string "subject_name"
    t.string "weekday"
    t.string "time"
    t.boolean "justified", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index "\"school_code\", \"CFstudent\", \"date\", \"class_code\", \"name\", \"weekday\", \"time\"", name: "chiave_primaria_absences", unique: true
  end

  create_table "admins", primary_key: "CF", id: :string, force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "mail"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "class_rooms", force: :cascade do |t|
    t.string "class_code"
    t.string "school_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_code", "class_code"], name: "index_class_rooms_on_school_code_and_class_code", unique: true
  end

  create_table "commitments", id: false, force: :cascade do |t|
    t.string "title"
    t.datetime "date"
    t.string "type", null: false
    t.string "CFprof"
    t.string "CFfamily"
    t.string "link"
    t.index ["date", "CFprof"], name: "chiave_primaria_commitments", unique: true
  end

  create_table "communications", force: :cascade do |t|
    t.string "title"
    t.text "text"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "families", id: false, force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "family_students", force: :cascade do |t|
    t.string "CFfamily"
    t.string "CFstudent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grades", id: false, force: :cascade do |t|
    t.integer "value"
    t.string "CFprof"
    t.string "school_code"
    t.string "class_code"
    t.string "CFstudent"
    t.string "subject_name"
    t.string "weekday"
    t.string "time"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_code", "CFstudent", "class_code", "subject_name", "date"], name: "chiave_primaria_grades", unique: true
  end

  create_table "homeworks", id: false, force: :cascade do |t|
    t.boolean "delivered", default: false
    t.text "text"
    t.datetime "date"
    t.string "name"
    t.string "time"
    t.string "weekday"
    t.string "school_code"
    t.string "class_code"
    t.string "CFprof"
    t.string "subject_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["date", "school_code", "class_code", "weekday", "time", "subject_name"], name: "chiave_primaria_homeworks", unique: true
  end

  create_table "meetings", id: false, force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notes", force: :cascade do |t|
    t.string "CFprof"
    t.string "CFstudent"
    t.datetime "date"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "school_staffs", id: false, force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schools", primary_key: "code", id: :string, force: :cascade do |t|
    t.string "address"
    t.string "name"
    t.string "school_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", id: false, force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects", id: false, force: :cascade do |t|
    t.string "weekday"
    t.string "time"
    t.string "school_code"
    t.string "CFprof"
    t.string "class_code"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_code", "class_code", "weekday", "time"], name: "chiave_primaria_subjects", unique: true
  end

  create_table "teachers", id: false, force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", primary_key: "CF", id: :string, force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "mail"
    t.string "password"
    t.string "school_code"
    t.string "type", null: false
    t.datetime "birthdate"
    t.string "student_class_code"
    t.string "student_school_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "absences", "users", column: "CFprof", primary_key: "CF"
  add_foreign_key "absences", "users", column: "CFstudent", primary_key: "CF"
  add_foreign_key "class_rooms", "schools", column: "school_code", primary_key: "code"
  add_foreign_key "commitments", "users", column: "CFfamily", primary_key: "CF"
  add_foreign_key "commitments", "users", column: "CFprof", primary_key: "CF"
  add_foreign_key "family_students", "users", column: "CFfamily", primary_key: "CF"
  add_foreign_key "family_students", "users", column: "CFstudent", primary_key: "CF"
  add_foreign_key "grades", "users", column: "CFprof", primary_key: "CF"
  add_foreign_key "grades", "users", column: "CFstudent", primary_key: "CF"
  add_foreign_key "homeworks", "users", column: "CFprof", primary_key: "CF"
  add_foreign_key "notes", "users", column: "CFprof", primary_key: "CF"
  add_foreign_key "notes", "users", column: "CFstudent", primary_key: "CF"
  add_foreign_key "subjects", "users", column: "CFprof", primary_key: "CF"
  add_foreign_key "users", "schools", column: "school_code", primary_key: "code"
end
