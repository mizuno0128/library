class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

before_action :current_user?
  def current_user
  	if session[:user_id]
  		@current_user ||= User.find(session[:user_id])
  	end
  end

helper_method :current_user
  private
  def current_user?
  	unless session[:user_id]
  		redirect_to controller: :logins, action: :new 
  	end
  end
end
