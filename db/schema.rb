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

ActiveRecord::Schema.define(version: 2020_10_28_113653) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chevals", force: :cascade do |t|
    t.string "nom"
    t.text "description"
    t.date "naissance"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cours", force: :cascade do |t|
    t.bigint "moniteur_id", null: false
    t.datetime "heure_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["moniteur_id"], name: "index_cours_on_moniteur_id"
  end

  create_table "moniteurs", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_moniteurs_on_email", unique: true
    t.index ["reset_password_token"], name: "index_moniteurs_on_reset_password_token", unique: true
  end

  create_table "reservation_chevals", force: :cascade do |t|
    t.bigint "cheval_id", null: false
    t.bigint "user_id", null: false
    t.bigint "cour_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cheval_id"], name: "index_reservation_chevals_on_cheval_id"
    t.index ["cour_id"], name: "index_reservation_chevals_on_cour_id"
    t.index ["user_id"], name: "index_reservation_chevals_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "cours", "moniteurs"
  add_foreign_key "reservation_chevals", "chevals"
  add_foreign_key "reservation_chevals", "cours"
  add_foreign_key "reservation_chevals", "users"
end
