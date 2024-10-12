class ResourcesController < ApplicationController
  before_action :set_resource, only: [:show, :update, :destroy]

  def db_backup
    Resource.db_backup
  end

  def db_reset
    Resource.db_reset
  end

  def index
    @resources = Resource.all
    render json: @resources
  end

  def show
    render json: @resource
  end

  def create
    @resource = Resource.new(resource_params)
    if @resource.save
      render json: @resource
    else
      render json: { errors: { message: 'resource NOT created' }}
    end
  end
  
  def update
    @resource.update(resource_params)
    if @resource.save
      render json: @resource
    else
      binding.pry
      render json: { errors: { message: 'resource NOT updated' }}
    end
  end

  def destroy
    @resource.delete
  end

  private
  def set_resource
    @resource = Resource.find_by_id(params[:id])
  end

  def resource_params
    params.require(:resource).permit(:id, :title, :category, :description, :format, :location, :url)
  end
end
