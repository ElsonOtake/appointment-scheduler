class SessionsController < ApplicationController
  def create
    session_params = params.permit(:name)
    @user = User.find_by(name: session_params[:name])
    if @user
      session[:user_id] = @user.id
      redirect_to user_coaches_path(@user.id)
    else
      flash[:notice] = 'Login is invalid!'
      redirect_to new_session_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = 'You have been signed out!'
    redirect_to new_session_path
  end
end
