class BookingsController < ApplicationController

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
    @coworking_space = CoworkingSpace.find(params[:coworking_space_id])
  end

  def mybookings
    @bookings = current_user.bookings
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

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:start_datetime, :end_datetime)
  end
end
