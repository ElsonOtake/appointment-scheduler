class SchedulesController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @coach = Coach.find(params[:coach_id])
    @schedules = @coach.schedules
  end
end
