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

ActiveRecord::Schema.define(version: 20160318210310) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "api_keys", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "public_key"
    t.string   "access_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "blacklists", force: :cascade do |t|
    t.string   "email_to"
    t.string   "email_from"
    t.boolean  "global"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "business_media", force: :cascade do |t|
    t.string   "social_need_id"
    t.string   "integer"
    t.string   "content_url"
    t.string   "string"
    t.string   "content_type"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "business_need_categories", force: :cascade do |t|
    t.string   "category_id"
    t.string   "integer"
    t.string   "social_need_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "business_needs", force: :cascade do |t|
    t.string   "user_id"
    t.string   "integer"
    t.string   "name"
    t.string   "string"
    t.string   "description"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "address"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "level"
    t.string   "integer"
    t.string   "name"
    t.string   "string"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "challenge_media", force: :cascade do |t|
    t.string   "content_url"
    t.string   "string"
    t.string   "content_type"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "challenge_solutions", force: :cascade do |t|
    t.string   "user_id"
    t.string   "integer"
    t.string   "name"
    t.string   "string"
    t.string   "challenge_id"
    t.string   "destription"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "challenge_sponsors", force: :cascade do |t|
    t.string   "challenge_id"
    t.string   "integer"
    t.string   "sponsor_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "challenges", force: :cascade do |t|
    t.string   "name"
    t.string   "string"
    t.string   "description"
    t.string   "start_date"
    t.string   "date"
    t.string   "end_date"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "location"
    t.string   "reward"
    t.string   "conditions"
    t.string   "stage"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string   "type"
    t.string   "integer"
    t.string   "social_need_id"
    t.string   "user_id"
    t.string   "parent_id"
    t.string   "content"
    t.string   "string"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "commnet_likes", force: :cascade do |t|
    t.string   "commnets_id"
    t.string   "integer"
    t.string   "value"
    t.string   "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree

  create_table "social_media", force: :cascade do |t|
    t.string   "social_need_id"
    t.string   "integer"
    t.string   "content_url"
    t.string   "string"
    t.string   "content_type"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "social_media_images", force: :cascade do |t|
    t.integer  "socials_need_id"
    t.string   "image"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "social_need_categories", force: :cascade do |t|
    t.string   "category_id"
    t.string   "integer"
    t.string   "social_need_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "social_need_likes", force: :cascade do |t|
    t.string   "user_id"
    t.string   "integer"
    t.string   "social_need_id"
    t.string   "value"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "socials_need_images", force: :cascade do |t|
    t.integer  "socials_need_id"
    t.string   "image_url"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "image_content_file_name"
    t.string   "image_content_content_type"
    t.integer  "image_content_file_size"
    t.datetime "image_content_updated_at"
  end

  create_table "socials_needs", force: :cascade do |t|
    t.string   "user_id"
    t.string   "integer"
    t.string   "name"
    t.string   "string"
    t.string   "description"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "address"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "image_content_file_name"
    t.string   "image_content_content_type"
    t.integer  "image_content_file_size"
    t.datetime "image_content_updated_at"
    t.integer  "category_id"
  end

  create_table "solution_media", force: :cascade do |t|
    t.string   "solution_id"
    t.string   "integer"
    t.string   "content_url"
    t.string   "string"
    t.string   "content_type"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "solutions_likes", force: :cascade do |t|
    t.string   "user_id"
    t.string   "integer"
    t.string   "solution_id"
    t.string   "value"
    t.string   "string"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "sponsors", force: :cascade do |t|
    t.string   "name"
    t.string   "string"
    t.string   "picture"
    t.string   "web"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tokens", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "town_media", force: :cascade do |t|
    t.string   "social_need_id"
    t.string   "integer"
    t.string   "content_url"
    t.string   "string"
    t.string   "content_type"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "town_need_categories", force: :cascade do |t|
    t.string   "category_id"
    t.string   "integer"
    t.string   "social_need_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "town_needs", force: :cascade do |t|
    t.string   "user_id"
    t.string   "integer"
    t.string   "name"
    t.string   "string"
    t.string   "description"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "address"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "user_oauths", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "slug"
    t.string   "email"
    t.string   "image"
    t.string   "password_salt"
    t.string   "password_hash"
    t.boolean  "active",              default: false
    t.boolean  "admin",               default: false
    t.boolean  "first_login",         default: true
    t.boolean  "deleted",             default: false
    t.integer  "sign_in_count",       default: 0
    t.datetime "last_sign_in_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "users", ["slug"], name: "index_users_on_slug", unique: true, using: :btree

end
