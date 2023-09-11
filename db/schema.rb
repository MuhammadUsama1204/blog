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

ActiveRecord::Schema[7.0].define(version: 2023_09_11_110029) do
  create_table "article_clients", force: :cascade do |t|
    t.integer "client_id", null: false
    t.integer "article_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "submission_date"
    t.index ["article_id"], name: "index_article_clients_on_article_id"
    t.index ["client_id"], name: "index_article_clients_on_client_id"
  end

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status"
  end

  create_table "articles_comments", id: false, force: :cascade do |t|
    t.integer "article_id", null: false
    t.integer "comment_id", null: false
  end

  create_table "client_articles", force: :cascade do |t|
    t.integer "client_id", null: false
    t.integer "article_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_client_articles_on_article_id"
    t.index ["client_id"], name: "index_client_articles_on_client_id"
  end

  create_table "clients", force: :cascade do |t|
    t.text "User_Name"
    t.string "contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string "commenter"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status"
    t.integer "commentable_id"
    t.string "commentable_type"
    t.integer "post_id"
    t.integer "article_id"
  end

  create_table "demos", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "managers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "gender"
    t.date "dob"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.text "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.string "article_id"
    t.string "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "reviewable_id"
    t.string "reviewable_type"
  end

  create_table "sub_demos", force: :cascade do |t|
    t.string "title"
    t.integer "demo_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["demo_id"], name: "index_sub_demos_on_demo_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email_confirmation"
    t.integer "manager_id"
    t.index ["manager_id"], name: "index_users_on_manager_id"
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "type"
    t.string "color"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "article_clients", "articles"
  add_foreign_key "article_clients", "clients"
  add_foreign_key "client_articles", "articles"
  add_foreign_key "client_articles", "clients"
  add_foreign_key "sub_demos", "demos"
  add_foreign_key "users", "users", column: "manager_id"
end
