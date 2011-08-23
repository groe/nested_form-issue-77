class CreateUserHobbyLocations < ActiveRecord::Migration
  def change
    create_table :user_hobby_locations do |t|
      t.references :user_hobby
      t.references :location

      t.timestamps
    end
    add_index :user_hobby_locations, :user_hobby_id
    add_index :user_hobby_locations, :location_id
  end
end
