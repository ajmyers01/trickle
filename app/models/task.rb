class Task < ActiveRecord::Base
  belongs_to :habit

  validates_presence_of :habit_id
  validates_presence_of :task_date
end
