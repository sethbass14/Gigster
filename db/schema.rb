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

ActiveRecord::Schema.define(version: 20171205170605) do

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gigs", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.date "date"
    t.time "start_time"
    t.integer "city_id"
    t.integer "leader_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_gigs_on_city_id"
    t.index ["leader_id"], name: "index_gigs_on_leader_id"
  end

  create_table "instruments", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "musician_gigs", force: :cascade do |t|
    t.integer "musician_id"
    t.integer "gig_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gig_id"], name: "index_musician_gigs_on_gig_id"
    t.index ["musician_id"], name: "index_musician_gigs_on_musician_id"
  end

  create_table "musician_instruments", force: :cascade do |t|
    t.integer "musician_id"
    t.integer "instrument_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["instrument_id"], name: "index_musician_instruments_on_instrument_id"
    t.index ["musician_id"], name: "index_musician_instruments_on_musician_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "bio"
    t.integer "age"
    t.integer "city_id"
    t.boolean "is_leader", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_users_on_city_id"
  end

end
