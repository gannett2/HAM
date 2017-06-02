class AddPicLocationToCamps < ActiveRecord::Migration
  def change
    add_column :camps, :pic_location, :string
  end
end
