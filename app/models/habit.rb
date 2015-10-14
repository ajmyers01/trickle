class Habit < ActiveRecord::Base

  belongs_to :user
  has_many :tasks
  has_one :icon

  validates_presence_of :name
  validates_presence_of :description
  validates_presence_of :start_date
  validates_presence_of :end_date
  validates_presence_of :user_id

  def completed_days
    tasks.where(completed: true).count
  end

  def task_for_today
    tasks.where(completed: false, task_date: Date.today).first
  end

  def longest_running_streak

    #TODO
    #figure out how to do this.
    "Todo"
  end
end
