class InstructorsController < ApplicationController
  
  before_action :set_instructor, only: [:show, :edit, :update, :destroy]
  
  def index
    @instructors = Instructor.all
  end

  def show
  end

  def new
    @instructor = Instructor.new
  end

  def create
    if @instructor = Instructor.create(instructor_params)
      redirect_to instructor_path(@instructor)
    else
      redirect_to new_instructor_path
    end
  end

  def edit

  end

  def update
    if @instructor.update(instructor_params)
      redirect_to instructor_path(@instructor)
    else
      redirect_to @instructor
    end
  end

  def destroy
    @instructor.destroy
    redirect_to instructors_path
  end

  private

    def instructor_params
      params.require(:instructor).permit(:name)
    end

    def set_instructor
      @instructor = Instructor.find(params[:id])
    end
    
end
