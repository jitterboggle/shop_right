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

ActiveRecord::Schema.define(version: 20170411072923) do

  create_table "ingredients", force: :cascade do |t|
    t.integer  "meal_id"
    t.string   "name"
    t.float    "quantity"
    t.integer  "unit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["meal_id"], name: "index_ingredients_on_meal_id"
  end

  create_table "items", force: :cascade do |t|
    t.integer  "shopping_list_id"
    t.string   "name"
    t.float    "quantity"
    t.integer  "unit"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["shopping_list_id"], name: "index_items_on_shopping_list_id"
  end

  create_table "meals", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "method"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "meal_image_file_name"
    t.string   "meal_image_content_type"
    t.integer  "meal_image_file_size"
    t.datetime "meal_image_updated_at"
    t.integer  "diet"
    t.integer  "shopping_list_id"
  end

  create_table "shopping_lists", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.boolean  "admin_role"
    t.boolean  "user_role"
    t.integer  "preference"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
