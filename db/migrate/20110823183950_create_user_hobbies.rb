class CreateUserHobbies < ActiveRecord::Migration
  def change
    create_table :user_hobbies do |t|
      t.references :user
      t.references :hobby

      t.timestamps
    end
    add_index :user_hobbies, :user_id
    add_index :user_hobbies, :hobby_id
  end
end
