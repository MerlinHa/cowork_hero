class CoworkingSpacesController < ApplicationController

  def index
    @coworking_spaces = CoworkingSpace.all
  end

  def new
    @coworking_space = CoworkingSpace.new
  end

  def create
    @coworking_space = CoworkingSpace.new(params_coworking_space)
    @coworking_space.user = current_user
    @coworking_space.save
    redirect_to coworking_space_path(@coworking_space)
  end

  def myspaces
    @coworking_spaces = current_user.coworking_spaces
  end

  private

  def params_coworking_space
    params.require(:coworking_space).permit(:location, :capacity, :services, :price, :name)
  end
end
