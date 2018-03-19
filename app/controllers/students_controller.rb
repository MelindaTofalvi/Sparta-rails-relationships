class StudentsController < ApplicationController
   
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  # GET /students
  # GET /students.json
  def index
    @students = Student.all
    @lessons = Lesson.all
    @teachers = Teacher.all
  end

  # GET /students/1
  # GET /students/1.json
  def show
    @students = Student.all
    @lessons = Lesson.all
    @teachers = Teacher.all
    #@lesson_id = Lesson.find(params[:id].to_i)
  end

  # GET /students/new
  def new
    @student = Student.new
    @lessons = Lesson.all
    @teachers = Teacher.all
  end

  # GET /students/1/edit
  def edit
    @lessons = Lesson.all
    @teachers = Teacher.all
  end

  # POST /students
  # POST /students.json
  def create
    @lessons = Lesson.all
    @teachers = Teacher.all
    @student = Student.new(student_params)
    # @student.lesson_id = @lessons.id
    # @student.save



    respond_to do |format|
      if @student.save
        format.html { redirect_to @student, notice: 'Student was successfully created.' }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    @lessons = Lesson.all
    @teachers = Teacher.all
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to @student, notice: 'Student was successfully updated.' }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    authorize @student
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url, notice: 'Student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def admin_list
  authorize Post # we don't have a particular post to authorize
  # Rest of controller action
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:name, :age, :phone, :lesson_id, :teacher_id)
    end
end
