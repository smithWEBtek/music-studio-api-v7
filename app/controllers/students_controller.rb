class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :update, :destroy]

  def index
    @students = Student.all
    render json: @students
  end

  def show
    render json: @student
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      render json: @student, status: :created, location: @student
    else
      render json: @student.errors, status: :unprocessable_entity
    end
  end

  def update
    if @student.update(student_params)
      render json: @student
    else
      render json: @student.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @student.destroy!
  end

  def resources
    @resources = @student.resources
    if @resources
      render json: @resources
    else
      render json: { errors: { message: 'student resources NOT found' }}
    end
  end

  private
    def set_student
      @student = Student.find_by_id(params[:id])
    end

    def student_params
      params.require(:student).permit(:id, :firstname, :lastname, :email, :level, :teacher_id, :active, :likes)
    end
end
