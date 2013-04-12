# app/controllers/user_sessions_controller.rb
class UserSessionController < ApplicationController

	skip_before_filter :require_login, :only => :login

	def login
		if request.get?
			@user = User.new
		else
			respond_to do |format|
				@user = User.find_by_name_and_password(params[:username],params[:password])
			  	if @user
					session[:current_user] = @user
			    	format.html { redirect_to :apps, :notice => 'Login successful.' }
			  	else
			    	format.html { flash.now[:alert] = "Login failed."; render :action => "login" }
	 		  	end
			end
		end
	end

	def logout
		session.delete(:current_user)
		redirect_to(:login, :notice => 'Logged out!')
	end
	
	def index
	end
end
