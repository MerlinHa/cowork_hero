class CoworkingSpacesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:index]
  def index
    @coworking_spaces = CoworkingSpace.search_by_name(params[:query])

    @coworking_spaces_two = CoworkingSpace.where.not(latitude: nil, longitude: nil)

    @markers = @coworking_spaces_two.map do |space|
      {
        lat: space.latitude,
        lng: space.longitude#,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    end
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

  def show
    @coworking_space = CoworkingSpace.find(params[:id])
  end


  private

  def params_coworking_space
    params.require(:coworking_space).permit(:capacity, :services, :price, :name, :user_id, :latitude, :longitude, :address, :city, :short_desc, :long_desc, :zip, :country, :photo, :photo_id)

  end
end
