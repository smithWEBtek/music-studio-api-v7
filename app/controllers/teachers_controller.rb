class TeachersController < ApplicationController
    before_action :set_teacher, only: [:show, :update, :destroy]

    def index
      @teachers = Teacher.all
      render json: @teachers
    end
  
    def show
      render json: @teacher
    end
  
    def create
      @teacher = Teacher.new(teacher_params)
      if @teacher.save
        render json: @teacher
      else
        render json: { errors: { message: 'teacher NOT created' }}
      end
    end
  
    def update
      @teacher.update(teacher_params)
      if @teacher.save
        render json: @teacher
      else
        render json: { errors: { message: 'teacher NOT updated' }}
      end
    end
    
    def destroy
      @teacher.update(active: false)
      @teacher.students.each {|stu| stu.update(teacher_id: 1)}
    end

    private
      def set_teacher
        @teacher = Teacher.find_by_id(params[:id])
      end
        
      def teacher_params
        params.require(:teacher).permit(:id, :firstname, :lastname, :email, :active)
      end
  end
  