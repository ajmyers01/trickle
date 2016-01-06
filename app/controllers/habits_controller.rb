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
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    @habit = Habit.find(params[:id])
    @habit.destroy

    redirect_to root_path
  end

  private

  def habit_params
    params.require(:habit).permit(:name, :description, :start_date, :end_date, :user_id)
  end
end
