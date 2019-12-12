class StudentsController < ApplicationController
  before_action: :get_all_students, only: [:index, :destroy]
  before_action: :find_student_by_id, only: [:show, :destroy]

  def index 
    render json: @students
  end

  def show 
    render json: @student 
  end 

  def create
    @student = Student.new(student_params)
    if @student.save
      render json: @student
    else
      render json: error.message
    end
  end

  def destroy
    @student.destroy 
    render json: @students 
  end

  private
  
  def student_params
    params.require(:student).permit(:name, :blue, :gold, :green, :orange, :cohort_id, :previous_partners)
  end

  def get_all_students
    @students = Student.all 
  end

  def find_student_by_id
    @student = Student.find(params[:id])
  end


end
