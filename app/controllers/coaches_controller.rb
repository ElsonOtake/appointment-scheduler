class CoachesController < ApplicationController
  def index
    @coaches = Coach.all
    @user = User.find(params[:user_id])
  end
end
