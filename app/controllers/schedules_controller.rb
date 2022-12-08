class SchedulesController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @coach = Coach.find(params[:coach_id])
    @schedules = @coach.schedules
    @sunday = @coach.schedules.where(day_of_week: 'Sunday')
    @monday = @coach.schedules.where(day_of_week: 'Monday')
    @tuesday = @coach.schedules.where(day_of_week: 'Tuesday')
    @wednesday = @coach.schedules.where(day_of_week: 'Wednesday')
    @thursday = @coach.schedules.where(day_of_week: 'Thursday')
    @friday = @coach.schedules.where(day_of_week: 'Friday')
    @saturday = @coach.schedules.where(day_of_week: 'Saturday')
  end
end
