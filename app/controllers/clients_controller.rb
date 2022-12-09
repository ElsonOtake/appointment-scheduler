class ClientsController < ApplicationController
  def new
    @client = Client.new
  end

  def create
    @client = Client.create(client_params)
    if @client.valid?
      session[:client_id] = @client.id
      redirect_to client_coaches_path(@client.id)
    else
      flash[:error] = 'Error- please try to create an account again.'
      redirect_to new_session_path
    end
  end

  private

  def client_params
    params.require(:client).permit(:name)
  end
end
