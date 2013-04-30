class Qowa::VacationTypesController < ApplicationController
  # GET /qowa/vacation_types
  # GET /qowa/vacation_types.json
  def index
    @qowa_vacation_types = VacationType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @qowa_vacation_types }
    end
  end

  # GET /qowa/vacation_types/1
  # GET /qowa/vacation_types/1.json
  def show
    @qowa_vacation_type = VacationType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @qowa_vacation_type }
    end
  end

  # GET /qowa/vacation_types/new
  # GET /qowa/vacation_types/new.json
  def new
    @qowa_vacation_type = VacationType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @qowa_vacation_type }
    end
  end

  # GET /qowa/vacation_types/1/edit
  def edit
    @edit_flag = true
    @qowa_vacation_type = VacationType.find(params[:id])
  end

  # POST /qowa/vacation_types
  # POST /qowa/vacation_types.json
  def create
    @qowa_vacation_type = VacationType.new(params[:vacation_type])

    respond_to do |format|
      if @qowa_vacation_type.save
        format.html { redirect_to qowa_vacation_types_path, notice: 'Vacation type was successfully created.' }
        format.json { render json: @qowa_vacation_type, status: :created, location: @qowa_vacation_type }
      else
        format.html { render action: "new" }
        format.json { render json: @qowa_vacation_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /qowa/vacation_types/1
  # PUT /qowa/vacation_types/1.json
  def update
    @qowa_vacation_type = VacationType.find(params[:id])

    respond_to do |format|
      if @qowa_vacation_type.update_attributes(params[:vacation_type])
        format.html { redirect_to qowa_vacation_types_path, notice: 'Vacation type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @qowa_vacation_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qowa/vacation_types/1
  # DELETE /qowa/vacation_types/1.json
  def destroy
    @qowa_vacation_type = VacationType.find(params[:id])
    @qowa_vacation_type.destroy

    respond_to do |format|
      format.html { redirect_to qowa_vacation_types_url }
      format.json { head :no_content }
    end
  end
end
