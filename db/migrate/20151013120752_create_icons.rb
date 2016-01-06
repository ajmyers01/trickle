class CreateIcons < ActiveRecord::Migration
  def change
    create_table :icons do |t|
      t.string :name
      t.string :icon_path
      t.integer :habit_id
      t.timestamps null: false
    end
  end
end
