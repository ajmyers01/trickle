class Habit < ActiveRecord::Base

  belongs_to :user
  has_many :tasks
  has_one :icon

  validates_presence_of :name
#  validates_presence_of :description
  validates_presence_of :start_date
  validates_presence_of :end_date
  validates_presence_of :user_id

  def completed_days
    tasks.where(completed: true).count || 0
  end

  def incomplete_days
    tasks.where("completed = ? AND task_date < ?", false, Date.today).count || 0
  end

  def total_days_in
    completed_days + incomplete_days
  end

  def completion_average
    ((completed_days.to_f / (total_days_in.to_f + 1) ) * 100).round
  end

  def days_remaining
    30 - completed_days - incomplete_days
  end

  def task_for_today
    tasks.where(completed: false, task_date: Date.today).first
  end

  def self.active_habits
    Habit.where(active: true)
  end

  def create_task_for_habit
    puts "successful run of scheduler"
  end

  def longest_running_streak
    #TODO
    #figure out how to do this.
  end

  def icon_path
    Icon.find(self.habit_type).icon_path
  end

  # Scheduler Methods
  def self.create_daily_tasks
    active_habits.each do |habit|
      Task.create(
        habit_id: habit.id,
        completed: false,
        task_date: Date.today)

    end
  end

  def self.expire_old_habits
    habits = Habit.all
    habits.all.each do |habit|
      date_range = habit.start_date..habit.end_date
      if date_range === Date.today
        Rails.logger.info "active"
        puts "nothing to see here"
      else
        habit.update_attributes(active: false)
      end
    end
  end

end
