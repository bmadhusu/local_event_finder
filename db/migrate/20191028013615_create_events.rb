class CreateEvents < ActiveRecord::Migration[5.0]
  def up
    create_table :events do |t|

      t.integer "tweeter_id"
      t.string "title", :null => false
      t.text "description"
      t.datetime "event_date", :null => false, index: {unique: false}
      t.string "event_type"
      t.decimal "cost"
      t.string "location_address", :null => false
      t.string "state", index: {unique: false}
      t.string "zip", :null => false, index: {unique: false}
      t.string "congressional_district", :null => false
      t.string "state_ad"
      t.string "state_ed"
      t.string "city_district"
      t.string "website"
      t.string "organization"
      t.integer "tweet_count"
      t.string "map_link"

      # might need tweet ID and store list of twitter handles of those who've
      # retweeted

      t.timestamps
    end

    add_index("events", "tweeter_id")
  end

  def down
    drop_table :events

  end
end
