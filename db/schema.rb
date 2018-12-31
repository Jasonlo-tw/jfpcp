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

ActiveRecord::Schema.define(version: 20181230171009) do

  create_table "carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "notes"
  end

  create_table "collections", force: :cascade do |t|
    t.string "collection_name"
    t.date "release_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture"
  end

  create_table "line_items", force: :cascade do |t|
    t.integer "product_id"
    t.integer "cart_id"
    t.decimal "price"
    t.integer "quantity", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "total"
    t.index ["cart_id"], name: "index_line_items_on_cart_id"
    t.index ["product_id"], name: "index_line_items_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "product_name"
    t.decimal "price"
    t.text "description_short"
    t.text "description_long"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "collection_id"
    t.string "size_contracted"
    t.string "size_extended"
    t.string "size_strap"
    t.string "detail_style"
    t.string "detail_material"
    t.string "string"
    t.string "detail_cleaning"
    t.string "detail_capacity"
    t.integer "size_hand_drop"
    t.index ["collection_id"], name: "index_products_on_collection_id"
  end

  create_table "users", force: :cascade do |t|
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

end
