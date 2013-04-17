# app/controllers/user_sessions_controller.rb
class UserSessionController < ApplicationController
	 respond_to :html, :json

	skip_before_filter :require_login, :only => :login

	def login
		if request.get?
			@groups = Group.all
			@users = []
			
		else
			respond_to do |format|
				@user = User.find_by_id_and_password(params[:username],params[:password])
				p "=====================================login successful=============================="
				p params[:username] +" , "+ params[:password]
				p "hello !!!," 

			  	if @user
					session[:current_user] = @user
			    	format.html { redirect_to "/dashboard", :notice => 'Login successful.' }
			  	else
			  		@groups = Group.all
					@users = User.all
			    	format.html { flash.now[:alert] = ""; render :action => "login" }
	 		  	end
			end
		end
	end

	def get_users
		@users = Group.find(params[:group]).users.collect {|u| {:id => u.id, :name => u.name} }
		respond_with @users
	end

	def logout
		session.delete(:current_user)
		redirect_to(:login, :notice => 'Logged out!')
	end
	
	def index
	end
end
