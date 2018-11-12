class DashboardsController < ApplicationController
  def mydashboard
    @myspaces = current_user.coworking_spaces
    @mybookings = current_user.bookings
    @myreviews = current_user.reviews
  end

def time
  @booking = Booking.find(params[:booking_id])
   @booking.end_datetime
  end
end


