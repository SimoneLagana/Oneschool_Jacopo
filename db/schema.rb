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

ActiveRecord::Schema[7.0].define(version: 2023_07_27_153455) do
  create_table "prova_compitos", force: :cascade do |t|
    t.datetime "data"
    t.string "giorno"
    t.integer "codicescuola"
    t.integer "codiceclasse"
    t.string "prof"
    t.integer "voto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "provas", force: :cascade do |t|
    t.string "eta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
