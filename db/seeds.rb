# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
admin_user = User.create(
               :name => "Admin",
               :email => "admin@admin.com",
               :password => "Password1",
               :password_confirmation => "Password1")

admin_habit = Habit.create(
                :name => "Admin Harder",
                :description => "Crack down on these trolls",
                :start_date => Date.today,
                :end_date => Date.today + 30.days,
                :user_id => admin_user.id)

Task.create(
  :habit_id => admin_habit.id,
  :completed => false,
  :task_date => Date.today)
