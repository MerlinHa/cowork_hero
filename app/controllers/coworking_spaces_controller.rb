class CoworkingSpacesController < ApplicationController

  def index
    @coworking_spaces = CoworkingSpace.all
  end

  def new
    @coworking_space = CoworkingSpace.new
  end

  def create
    @coworking_space = CoworkingSpace.new(params_coworking_space)
    @coworking_space.save
    redirect_to coworking_space_path
  end

  def show
    @coworking_space = CoworkingSpace.find(params[:id])
  end


  private

  def params_coworking_space
    params.require(:coworking_space)

  end
end
