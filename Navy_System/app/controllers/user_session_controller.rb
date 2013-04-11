# app/controllers/user_sessions_controller.rb
class UserSessionController < ApplicationController

	skip_before_filter :require_login, :except => [:destroy, :login]

	def new
		@user = User.new
	end

	def create
		respond_to do |format|
		  if @user = login(params[:username],params[:password])
		    format.html { redirect_to :users, :notice => 'Login successful.' }
		  else
		    format.html { flash.now[:alert] = "Login failed."; render :action => "new" }
		  end
		end
	end

	def destroy
		logout
		redirect_to(:login, :notice => 'Logged out!')
	end

	def login( name, password)
		@user = User.find_by_name_and_password(name,password)
		session[:current_user] = @user if @user
		@user
	end

	def logout
		session.delete(:current_user)
	end
	
	def landing
	end
end
