class CreateUsers < ActiveRecord::Migration[5.0]
  def up
    create_table :users do |t|

      t.string "name"
      t.string "email", :null => false, index: {unique: true}
      t.string "password", :null => false
      t.string "address"
      t.string "state"
      t.string "zip"
      t.string "congressional_district", :null => false
      t.string "state_ad"
      t.string "state_ed"
      t.string "city_district"

      t.timestamps
    end
  end

  def down
    drop_table :users
  end
end
