class UsersController < ApplicationController
  def index
    @user = User.first
  end

  def show; end

  def create; end
end
