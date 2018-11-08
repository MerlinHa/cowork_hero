class CoworkingSpacesController < ApplicationController
  def new
    @coworking_space = CoworkingSpace.new
  end

  def create
    @coworking_space = CoworkingSpace.new(params_coworkings)
    @coworking_space.save
    redirect_to coworking_spaces_path
  end

  def show
    @coworking_space = CoworkingSpace.find(params_coworkings)
  end


  private

  def params_coworkings
    params.require(:coworking_space).permit(:location, :capacity, :services, :price, :name)
  end
end
