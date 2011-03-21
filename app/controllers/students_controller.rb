class StudentsController < ApplicationController

  # GET /students
  def index
    @students = Student.all
  end

  # GET /students/1
  def show
    @student = Student.find(params[:id])
    # show.html.erb
  end

  # GET /students/new
  def new
    @student = Student.new
    # new.html.erb
  end

  # GET /students/1/edit
  def edit
    @student = Student.find(params[:id])
  end

  # POST /students
  def create
    @student = Student.new(params[:student])

    respond_to do |format|
      if @student.save
        format.html { redirect_to(@student, :notice => 'Student was successfully created.') }
        # format.xml  { render :xml => @student, :status => :created, :location => @student }
      else
        format.html { render :action => "new" }
        # format.xml  { render :xml => @student.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /students/1
  def update
    @student = Student.find(params[:id])

    respond_to do |format|
      if @student.update_attributes(params[:student])
        format.html { redirect_to(@student, :notice => 'Student was successfully updated.') }
        # format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        # format.xml  { render :xml => @student.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  def destroy
    @student = Student.find(params[:id])
    @student.destroy
   redirect_to(students_url)
  end
end

