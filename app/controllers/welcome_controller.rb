class WelcomeController < ApplicationController
  def index
    @habit = Habit.new
  end
end
