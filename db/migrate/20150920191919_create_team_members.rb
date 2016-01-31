class CreateTeamMembers < ActiveRecord::Migration
  def change
    create_table :team_members do |t|
      t.string :name
      t.integer :age
      t.string :church
      t.text :bio

      t.timestamps null: false
    end
  end
end
