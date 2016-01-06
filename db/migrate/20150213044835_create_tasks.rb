class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :habit_id
      t.boolean :completed
      t.date :task_date

      t.timestamps null: false
    end
  end
end
