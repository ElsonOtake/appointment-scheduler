class SchedulesController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @coach = Coach.find(params[:coach_id])
    @schedules = @coach.schedules
    @sunday = @coach.schedules.where(day_of_week: 'Sunday').order('booking_time')
    @monday = @coach.schedules.where(day_of_week: 'Monday').order('booking_time')
    @tuesday = @coach.schedules.where(day_of_week: 'Tuesday').order('booking_time')
    @wednesday = @coach.schedules.where(day_of_week: 'Wednesday').order('booking_time')
    @thursday = @coach.schedules.where(day_of_week: 'Thursday').order('booking_time')
    @friday = @coach.schedules.where(day_of_week: 'Friday').order('booking_time')
    @saturday = @coach.schedules.where(day_of_week: 'Saturday').order('booking_time')
  end

  def booking
    @user = User.find(params[:user_id])
    @coach = Coach.find(params[:coach_id])
    @schedule = Schedule.find(params[:schedule_id])
    @schedule.booking_user = @user.id
    respond_to do |format|
      format.html do
        if @schedule.save
          flash[:success] = 'Booking was successfully created'
        else
          flash.now[:error] = 'Error: Booking could not be saved'
        end
        redirect_to user_coach_schedules_path(@user.id, @coach.id)
      end
    end
  end
end
