  class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :require_login

  def require_login
  	redirect_to "/login" unless session[:current_user]
  end
end
