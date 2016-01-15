class HabitsController < ApplicationController
  before_filter :authorize

  def index
    @habits = Habits.all
  end

  def show
    @habit = Habit.find(params[:id])
  end

  def new
    @habit = Habit.new
    @habits = Habit.all
  end

  def create
    @habit = Habit.new(habit_params)

    if @habit.save
      Task.create(
        habit_id: @habit.id,
        completed: false,
        task_date: Date.today)

      redirect_to root_path
      flash[:success] = "Habit Created!"
    else
      flash[:error] = "Whoops something went wrong!"
      redirect_to root_path
    end
  end

  def destroy
    @habit = Habit.find(params[:id])
    @habit.destroy

    redirect_to root_path
  end

  def complete_daily_habit
    @habit = Habit.find_by(id: params[:completed_habit_id])
    @task = @habit.task_for_today
    @task.update_attributes(completed: true)
    respond_to do |format|
      format.json { head :ok }
    end
  end

  private

  def habit_params
    params.require(:habit).permit(:name, :description, :habit_type, :start_date, :end_date, :user_id)
  end
end
