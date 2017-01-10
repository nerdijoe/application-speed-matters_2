class AddUserIndexToPoints < ActiveRecord::Migration
  def change
    add_index :points, :user_id
    add_foreign_key :points, :users
  end
end
