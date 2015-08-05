# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150805132605) do

  create_table "authors", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.string   "avatar"
    t.boolean  "administrator",          default: false
    t.boolean  "status",                 default: true
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_index "authors", ["email"], name: "index_authors_on_email", unique: true
  add_index "authors", ["reset_password_token"], name: "index_authors_on_reset_password_token", unique: true

  create_table "colunists", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "author_id"
    t.boolean  "publish"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "colunists", ["author_id"], name: "index_colunists_on_author_id"

  create_table "post_categories", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.boolean  "publish"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "posts", force: :cascade do |t|
    t.integer  "post_category_id"
    t.integer  "author_id"
    t.string   "title"
    t.text     "content"
    t.string   "meta"
    t.string   "unique_code"
    t.string   "special"
    t.text     "resume"
    t.string   "thumb"
    t.boolean  "publish"
    t.boolean  "revised"
    t.integer  "reviser_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "posts", ["author_id"], name: "index_posts_on_author_id"
  add_index "posts", ["post_category_id"], name: "index_posts_on_post_category_id"
  add_index "posts", ["reviser_id"], name: "index_posts_on_reviser_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
