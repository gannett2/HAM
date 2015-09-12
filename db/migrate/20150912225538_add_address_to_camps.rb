class AddAddressToCamps < ActiveRecord::Migration
  def change
    add_column :camps, :address, :string
  end
end
