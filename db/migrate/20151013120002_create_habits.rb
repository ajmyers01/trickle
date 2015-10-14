class CreateHabits < ActiveRecord::Migration
  def change
    create_table :habits do |t|
      t.string :name
      t.string :description
      t.date :start_date
      t.date :end_date
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
