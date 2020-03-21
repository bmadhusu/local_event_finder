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

ActiveRecord::Schema.define(version: 20200103211824) do

  create_table "events", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "tweeter_id"
    t.string   "title",                                               null: false
    t.text     "description",            limit: 65535
    t.datetime "event_date",                                          null: false
    t.string   "event_type"
    t.decimal  "cost",                                 precision: 10
    t.string   "location_address",                                    null: false
    t.string   "state"
    t.string   "zip",                                                 null: false
    t.string   "congressional_district",                              null: false
    t.string   "state_ad"
    t.string   "state_ed"
    t.string   "city_district"
    t.string   "website"
    t.string   "organization"
    t.integer  "tweet_count"
    t.string   "map_link"
    t.datetime "created_at",                                          null: false
    t.datetime "updated_at",                                          null: false
    t.index ["event_date"], name: "index_events_on_event_date", using: :btree
    t.index ["state"], name: "index_events_on_state", using: :btree
    t.index ["tweeter_id"], name: "index_events_on_tweeter_id", using: :btree
    t.index ["zip"], name: "index_events_on_zip", using: :btree
  end

  create_table "tweeters", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.string   "twitter_handle",  null: false
    t.datetime "last_checked"
    t.string   "type_of_tweeter"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.string   "email",                  null: false
    t.string   "password",               null: false
    t.string   "address"
    t.string   "state"
    t.string   "zip"
    t.string   "congressional_district", null: false
    t.string   "state_ad"
    t.string   "state_ed"
    t.string   "city_district"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
  end

end
