class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user # make it visible in views

private
def current_user
  @current_user ||= User.find(session[:user_id]) if session[:user_id]
end
end
