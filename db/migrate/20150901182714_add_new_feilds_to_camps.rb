class AddNewFeildsToCamps < ActiveRecord::Migration
  def change
    add_column :camps, :start_date, :date
    add_column :camps, :end_date, :date
    add_column :camps, :is_day_camp, :boolean
    add_column :camps, :grade_low, :integer
    add_column :camps, :grade_high, :integer
    add_column :camps, :cost, :decimal
    add_column :camps, :director, :string
    add_column :camps, :location, :string
    add_column :camps, :start_time, :time
    add_column :camps, :end_time, :time
  end
end
