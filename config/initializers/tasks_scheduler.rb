require 'rufus-scheduler'

after_midnight = Rufus::Scheduler.singleton

after_midnight.cron '5 0 * * *' do
  Rails.logger.info "Expiring Habits."
  Habit.expire_old_habits
  Rails.logger.info "Creating Today's tasks."
  Habit.create_daily_tasks
end
