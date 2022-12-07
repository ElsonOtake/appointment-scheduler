class UsersController < ApplicationController
  def index; end

  def show; end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      session[:user_id] = @user.id
      redirect_to user_coaches_path(@user.id)
    else
      flash[:error] = 'Error- please try to create an account again.'
      redirect_to new_session_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
