class BookingsController < ApplicationController

  def index
    @booking = Booking.all
  end

  def new
    @booking = Booking.new
    @coworking_space = CoworkingSpace.find(params[:coworking_space_id])
  end

  def create
    @booking = Booking.new(booking_params) # creating the object with the filteredform data
    @coworking_space = CoworkingSpace.find(params[:coworking_space_id]) # grabbing the coworking_space by the id in params
    @booking.coworking_space = @coworking_space # setting the coworking_space on the booking (saving the relationship)
    @booking.user = current_user
    if @booking.save
      redirect_to coworking_space_booking_path(@coworking_space, @booking) # redirecting back to the coworking show path
    else
      render :new
    end   # saving the object
  end

  private

  def booking_params
    params.require(:booking).permit(:start_datetime, :end_datetime)
  end
end



# coworking_bookings POST   /coworkings/:coworking_id/bookings(.:format)                                             bookings#create
#     new_coworking_booking GET    /coworkings/:coworking_id/bookings/new(.:format)                                         bookings#new
#    edit_coworking_booking GET    /coworkings/:coworking_id/bookings/:id/edit(.:format)                                    bookings#edit
#         coworking_booking GET    /coworkings/:coworking_id/bookings/:id(.:format)                                         bookings#show
#                           PATCH  /coworkings/:coworking_id/bookings/:id(.:format)                                         bookings#update
#                           PUT    /coworkings/:coworking_id/bookings/:id(.:format)                                         bookings#update
#                           DELETE /coworkings/:coworking_id/bookings/:id(.:format)                                         bookings#destroy
