class LessonsController < ApplicationController
 before_action :set_lesson, only: [:show, :update, :destroy]

  def index
    @lessons = Lesson.all
    render json: @lessons
  end

  def show
    render json: @lesson
  end

  def create
    @lesson = Lesson.new(lesson_params)
    if @lesson.save
      render json: @lesson
    else
      render json: { errors: { message: 'lesson NOT created' }}
    end
  end
  
  def update
    @lesson.update(lesson_params)
    if @lesson.save
      render json: @lesson
    else
      render json: { errors: { message: 'lesson NOT updated' }}
    end
  end

  def destroy 
    @lesson.delete
  end

  private
  def set_lesson
    @lesson = Lesson.find_by_id(params[:id])
  end
    def lesson_params
    params.require(:lesson).permit(:id, :date, :teacher_id, :student_id, :notes)
  end
end
