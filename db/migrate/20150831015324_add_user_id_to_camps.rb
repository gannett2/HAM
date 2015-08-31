class AddUserIdToCamps < ActiveRecord::Migration
  def change
    add_column :camps, :user_id, :integer
    add_index :camps, :user_id
  end
end
