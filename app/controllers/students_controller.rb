class StudentsController < ApplicationController
  
  before_action :set_student, only: [:show, :edit, :destroy]

  def index
    @students = Student.all
  end

  def show
  end

  def new
    @student = Student.new
  end

  def create
    if @student = Student.create(student_params)
      redirect_to student_path(@student)
    else
      redirect_to new_student_path
    end
  end

  def edit
  end

  def update
    if @student = Student.update(student_params)
      redirect_to student_path(@student)
    else
      redirect_to @student
    end
  end

  def destroy
    @student.destroy
    redirect_to students_path
  end

  private

    def student_params
      params.require(:student).permit(:name, :major, :age, :instructor_id)
    end

    def set_student
      @student = Student.find(params[:id])
    end

end
