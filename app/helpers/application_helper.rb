module ApplicationHelper
  def logged_in?
    puts "logged_in? #{session[:client_id]}"
    !!session[:client_id]
  end

  def current_client
    @current_client ||= Client.find_by_id(session[:client_id]) if !!session[:client_id]
  end
end
