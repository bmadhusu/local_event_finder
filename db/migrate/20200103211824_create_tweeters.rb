class CreateTweeters < ActiveRecord::Migration[5.0]
  def up
    create_table :tweeters do |t|

      t.string "name"
      t.string "twitter_handle", :null => false
      t.datetime "last_checked"
      t.string "type_of_tweeter"

      t.timestamps
    end
  end

  def down
    drop_table :tweeters
  end

end
