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

ActiveRecord::Schema.define(version: 20170105101156) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comic_images", force: :cascade do |t|
    t.integer  "comic_id"
    t.integer  "shared_image_id"
    t.integer  "order",           default: 0
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["comic_id"], name: "index_comic_images_on_comic_id", using: :btree
  end

  create_table "comics", force: :cascade do |t|
    t.string   "name"
    t.text     "short_description"
    t.text     "long_description"
    t.integer  "pages_count",       default: 0
    t.integer  "size",              default: 0
    t.integer  "users_count",       default: 0
    t.integer  "price",             default: 0
    t.boolean  "paid",              default: false
    t.boolean  "featured",          default: false
    t.boolean  "popular",           default: false
    t.boolean  "published",         default: false
    t.integer  "cover_image_id"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.index ["name"], name: "index_comics_on_name", using: :btree
    t.index ["short_description"], name: "index_comics_on_short_description", using: :btree
  end

  create_table "shared_images", force: :cascade do |t|
    t.string   "original_image"
    t.string   "compressed_image"
    t.string   "thumbnail_image"
    t.integer  "original_image_size",   default: 0
    t.integer  "compressed_image_size", default: 0
    t.integer  "thumbnail_image_size",  default: 0
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

end
