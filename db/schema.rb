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

ActiveRecord::Schema[7.0].define(version: 2023_08_17_102847) do
  create_table "provas", force: :cascade do |t|
    t.string "eta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "school_staffs", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_school_staffs_on_user_id"
  end

  create_table "schools", primary_key: "code", id: :string, force: :cascade do |t|
    t.string "address"
    t.string "name"
    t.string "school_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.date "birthdate"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_students_on_user_id"
  end

  create_table "users", primary_key: "CF", id: :string, force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "mail"
    t.string "password"
    t.string "school_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "school_staffs", "users"
  add_foreign_key "students", "users"
end
