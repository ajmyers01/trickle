class AddHabitTypeToHabit < ActiveRecord::Migration
  def change
     add_column :habits, :habit_type, :integer
  end
end
