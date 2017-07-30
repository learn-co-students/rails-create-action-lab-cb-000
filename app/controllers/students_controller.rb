class StudentsController < ApplicationController

  def index
    @students = Student.all
    render 'students/index'
  end

  def show
    @student = Student.find(params[:id])
    render 'students/show'
  end

  def new
    render 'students/new'
  end

  def create
    @student = Student.create(first_name: params[:first_name],
                              last_name: params[:last_name])
    redirect_to student_path(@student.id)
  end

end
