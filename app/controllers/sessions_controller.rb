class SessionsController < ApplicationController
  def create
    session_params = params.permit(:name)
    @client = Client.find_by(name: session_params[:name])
    if @client
      session[:client_id] = @client.id
      redirect_to client_coaches_path(@client.id)
    else
      flash[:notice] = 'Login is invalid!'
      redirect_to new_session_path
    end
  end

  def destroy
    session[:client_id] = nil
    flash[:notice] = 'You have been signed out!'
    redirect_to new_session_path
  end
end
