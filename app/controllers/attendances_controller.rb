class AttendancesController < ApplicationController

  # GET /attendances
  def index
    @attendances = Attendance.all
  end

  # GET /attendances/1
  def show
    @attendance = Attendance.find(params[:id])
  end

  # GET /attendances/new
  def new
    @attendance = Attendance.new
  end

  # GET /attendances/1/edit
  def edit
    @attendance = Attendance.find(params[:id])
  end

  # POST /attendances
  def create
    @attendance = Attendance.new(params[:attendance])

    respond_to do |format|
      if @attendance.save
        format.html { redirect_to(@attendance, :notice => 'Attendance entered successfully.') }
      else
        format.html { render :action => "new" }
      end
    end
  end

  # PUT /attendances/1
  def update
    @attendance = Attendance.find(params[:id])

    respond_to do |format|
      if @attendance.update_attributes(params[:attendance])
        format.html { redirect_to(@attendance, :notice => 'Attendance was successfully updated.') }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  # DELETE /attendance/1
  def destroy
    @attendance = Attendance.find(params[:id])
    @attendance.destroy
   redirect_to(attendances_url)
  end

end
