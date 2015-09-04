class AddIndexToTable < ActiveRecord::Migration
  def change
    add_index :camps, :cost
  end
end
