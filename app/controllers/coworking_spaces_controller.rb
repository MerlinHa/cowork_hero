class CoworkingSpacesController < ApplicationController
  def new
    @coworking = Coworking.new
  end

  def create
    @coworking = Coworking.new(params_coworkings)
    @coworking.save
    redirect_to coworkings_path
  end

  private

  def params_coworkings
    params.require(:coworking).permit(:location, :capacity, :services, :price, :name)
  end
end
