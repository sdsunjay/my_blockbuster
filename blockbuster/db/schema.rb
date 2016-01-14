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

ActiveRecord::Schema.define(version: 20160114022734) do

  create_table "actors", force: :cascade do |t|
    t.string   "first_name", limit: 255
    t.string   "last_name",  limit: 255
    t.string   "coverpath",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "categorizations", force: :cascade do |t|
    t.integer  "movie_id",   limit: 4
    t.integer  "genre_id",   limit: 4
    t.integer  "position",   limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "directors", force: :cascade do |t|
    t.string   "first_name", limit: 255
    t.string   "last_name",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string   "title",          limit: 255
    t.integer  "year_id",        limit: 4
    t.integer  "rating_id",      limit: 4
    t.text     "plot",           limit: 65535
    t.integer  "writer_id",      limit: 4
    t.integer  "star_rating_id", limit: 4
    t.integer  "cast_id",        limit: 4
    t.integer  "director_id",    limit: 4
    t.integer  "duration",       limit: 4
    t.integer  "producer_id",    limit: 4
    t.integer  "genre_id",       limit: 4
    t.integer  "studio_id",      limit: 4
    t.string   "link",           limit: 255
    t.string   "coverpath",      limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.date     "release_date"
  end

  create_table "producers", force: :cascade do |t|
    t.text     "first_name", limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "last_name",  limit: 255
  end

  create_table "ratings", force: :cascade do |t|
    t.text     "rating",     limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "star_ratings", force: :cascade do |t|
    t.integer  "rating",     limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "studios", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "writers", force: :cascade do |t|
    t.string   "first_name", limit: 255
    t.string   "last_name",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "years", force: :cascade do |t|
    t.integer  "year",       limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

end
