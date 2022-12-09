class CoachesController < ApplicationController
  def index
    @coaches = Coach.all
    @client = Client.find(params[:client_id])
  end
end
