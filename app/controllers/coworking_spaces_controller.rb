class CoworkingSpacesController < ApplicationController

  def index
    @coworking_spaces = CoworkingSpace.all
  end

  def new
    @coworking_spaces = CoworkingSpace.new
  end

  def create
    @coworking_spaces = CoworkingSpace.new(params_coworking_spaces)
    @coworking_spaces.save
    redirect_to coworking_spaces_path
  end

  private

  def params_coworking_spaces
    params.require(:coworking_spaces).permit(:location, :capacity, :services, :price, :name)
  end
end
