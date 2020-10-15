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

ActiveRecord::Schema.define(version: 20201015210333) do

  create_table "ads", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "m_category_id"
    t.integer "d_category_id"
    t.string "condition"
    t.string "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string "username"
    t.text "body"
    t.integer "ad_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ad_id"], name: "index_comments_on_ad_id"
  end

  create_table "d_categories", force: :cascade do |t|
    t.string "name"
    t.integer "m_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["m_category_id"], name: "index_d_categories_on_m_category_id"
  end

  create_table "m_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
