class BookingsController < ApplicationController

  def new
    @coworking_booking = Booking.new
    @coworking_space = Coworking_space.find(params[:coworking_space_id])
  end

  def create
    @coworking_booking = Coworking_booking.new(coworking_booking_params) # creating the object with the filteredform data
    @coworking_space = Coworking_space.find(params[:coworking_space_id]) # grabbing the coworking_space by the id in params
    @coworking_booking.user = @coworking_space # setting the coworking_space on the booking (saving the relationship)
    @coworking_booking.save  # saving the object
    redirect_to coworking_space_path(@coworking_space) # redirecting back to the coworking show path
  end

  private

  def coworking_booking_params
    params.require(:coworking_booking).permit(:coworking_space_id, :user_id)
  end
end

end


# coworking_bookings POST   /coworkings/:coworking_id/bookings(.:format)                                             bookings#create
#     new_coworking_booking GET    /coworkings/:coworking_id/bookings/new(.:format)                                         bookings#new
#    edit_coworking_booking GET    /coworkings/:coworking_id/bookings/:id/edit(.:format)                                    bookings#edit
#         coworking_booking GET    /coworkings/:coworking_id/bookings/:id(.:format)                                         bookings#show
#                           PATCH  /coworkings/:coworking_id/bookings/:id(.:format)                                         bookings#update
#                           PUT    /coworkings/:coworking_id/bookings/:id(.:format)                                         bookings#update
#                           DELETE /coworkings/:coworking_id/bookings/:id(.:format)                                         bookings#destroy
