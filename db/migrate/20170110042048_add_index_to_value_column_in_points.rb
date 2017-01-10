class AddIndexToValueColumnInPoints < ActiveRecord::Migration
  def change
    add_index :points, :value
  end
end
