class CoachesController < ApplicationController
  def index
    @coaches = Coach.all
    @user = User.first
  end
end
