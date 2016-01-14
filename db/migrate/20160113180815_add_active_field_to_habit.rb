class AddActiveFieldToHabit < ActiveRecord::Migration
  def change
     add_column :habits, :active, :boolean, default: true
  end
end
