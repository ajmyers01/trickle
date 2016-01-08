class User < ActiveRecord::Base
  has_secure_password

  validates_presence_of :name
  validates_presence_of :email
  validates_presence_of :password
  validates_presence_of :password_confirmation

  has_many :habits

  def active_habits
    habits.where("start_date <= ? AND end_date >= ?", Date.today, Date.today)
  end

  def incomplete_daily_habit
    # active habit where the daily task isn't completed.
    habits_todo = []
    active_habits.each do |habit|
      if habit.tasks.where(completed: false, task_date: Date.today).present?
        habits_todo << habit
      end
    end
    habits_todo
  end
end
