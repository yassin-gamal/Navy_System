class Mostkhdmeen::UsersController < ApplicationController
  # GET /mostkhdmeen/users
  # GET /mostkhdmeen/users.json
  def index
    @mostkhdmeen_users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mostkhdmeen_users }
    end
  end

  # GET /mostkhdmeen/users/1
  # GET /mostkhdmeen/users/1.json
  def show
    @mostkhdmeen_user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mostkhdmeen_user }
    end
  end

  # GET /mostkhdmeen/users/new
  # GET /mostkhdmeen/users/new.json
  def new
    
    @mostkhdmeen_user = User.new
    @groups = Group.all
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mostkhdmeen_user }
    end
  end

  # GET /mostkhdmeen/users/1/edit
  def edit
    @groups = Group.all
    @mostkhdmeen_user = User.find(params[:id])
  end

  # POST /mostkhdmeen/users
  # POST /mostkhdmeen/users.json
  def create
    @mostkhdmeen_user = User.new(params[:user])

    respond_to do |format|
      if @mostkhdmeen_user.save
        format.html { redirect_to mostkhdmeen_users_path, notice: 'User was successfully created.' }
        format.json { render json: @mostkhdmeen_user, status: :created, location: @mostkhdmeen_user }
      else
        format.html { render action: "new" }
        format.json { render json: @mostkhdmeen_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mostkhdmeen/users/1
  # PUT /mostkhdmeen/users/1.json
  def update
    @mostkhdmeen_user = User.find(params[:id])

    respond_to do |format|
      if @mostkhdmeen_user.update_attributes(params[:user])
        format.html { redirect_to mostkhdmeen_users_path, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mostkhdmeen_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mostkhdmeen/users/1
  # DELETE /mostkhdmeen/users/1.json
  def destroy
    @mostkhdmeen_user = User.find(params[:id])
    @mostkhdmeen_user.destroy

    respond_to do |format|
      format.html { redirect_to mostkhdmeen_users_url }
      format.json { head :no_content }
    end
  end
end
