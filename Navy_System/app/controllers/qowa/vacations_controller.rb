class Qowa::VacationsController < ApplicationController
  # GET /qowa/vacations
  # GET /qowa/vacations.json
  def index
    if(params[:to_date])
      @qowa_vacations = Vacation.where("to_date >= ?", params[:to_date])
    else
      date = Date.today
      @qowa_vacations = Vacation.where("to_date >= ?", date)
    end
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @qowa_vacations }
    end
  end

  # GET /qowa/vacations/1
  # GET /qowa/vacations/1.json
  def show
    @qowa_vacation = Vacation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @qowa_vacation }
    end
  end

  # GET /qowa/vacations/new
  # GET /qowa/vacations/new.json
  def new
    @create_flag = true
    @qowa_vacation = Vacation.new
    @groups=  Group.all
    @users = []
    @vacation_types = VacationType.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @qowa_vacation }
    end
  end

  # GET /qowa/vacations/1/edit
  def edit
    @create_flag = false
    @qowa_vacation = Vacation.find(params[:id])
    @groups = Group.all
    @vacation_types = VacationType.all
  end

  # POST /qowa/vacations
  # POST /qowa/vacations.json
  def create
    p "========================================================"
    p params[:vacation]
    p "========================================================"
    @qowa_vacation = Vacation.new(params[:vacation])

    respond_to do |format|
      if @qowa_vacation.save
        p @qowa_vacation.to_date

        format.html { redirect_to qowa_vacations_path, notice: 'Vacation was successfully created.' }
        format.json { render json: @qowa_vacation, status: :created, location: @qowa_vacation }
      else
        format.html { render action: "new" }
        format.json { render json: @qowa_vacation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /qowa/vacations/1
  # PUT /qowa/vacations/1.json
  def update
    @qowa_vacation = Vacation.find(params[:id])

    respond_to do |format|
      if @qowa_vacation.update_attributes(params[:vacation])
        format.html { redirect_to qowa_vacations_path, notice: 'Vacation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @qowa_vacation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qowa/vacations/1
  # DELETE /qowa/vacations/1.json
  def destroy
    @qowa_vacation = Vacation.find(params[:id])
    @qowa_vacation.destroy

    respond_to do |format|
      format.html { redirect_to qowa_vacations_url }
      format.json { head :no_content }
    end
  end

  def getKhwareg
    dd    respond_to do |format|
      format.html
      format.json { render json: @qowa_vacations }
    end
  end

  def getUserVacations
    @qowa_vacations = Vacation.where("user_id = ? AND from_date = ? AND to_date = ?", params[:user_id], params[:from_date], params[:to_date])
    respond_to do |format|
      format.html
      format.json { render json: @qowa_vacations }
    end
  end
  
  
   def users
    @mostkhdmeen_users = User.all
    
  end

end
