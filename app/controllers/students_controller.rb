class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find([:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    @student = Student.new(student_params)
    if @student.save
      redirect_to student_path(@student)
    else
      render :new
    end
  end

  def edit
    @student = Student.find([:id])
  end

  def update
    @student = Student.find(params[:id])
    if @student.update(student_params)
      redirect_to student_path(@student)
    else
      render :edit
    end
  end

  def destroy
    Student.find(params[:id]).destroy
    redirect_to students_url
  end

  private
  def student_params
    params.require(:student).permit(:name)
  end
end
