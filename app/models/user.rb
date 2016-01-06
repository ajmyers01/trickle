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
end
