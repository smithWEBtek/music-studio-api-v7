class LessonResourcesController < ApplicationController
    def index
      @lesson_resources = LessonResource.all
      render json: @lesson_resources
    end
  
    def show
      @lesson_resource = LessonResource.find(params[:id])
      render json: @lesson_resource
    end
  
    def create    
      @lesson_resource = LessonResource.new(lesson_resource_params)
      if @lesson_resource.save
        render json: @lesson_resource
      else
        render json: { errors: { message: 'lesson_resource NOT created' }}
      end
    end
    
    def destroy
      @lesson_resource = LessonResource.find(params[:id])
      @lesson_resource.delete
    end

    private
    def lesson_resource_params
      params.require(:lesson_resource).permit(:lesson_id, :resource_id)
    end
  
  end
