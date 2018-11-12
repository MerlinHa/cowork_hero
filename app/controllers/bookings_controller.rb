class BookingsController < ApplicationController

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @coworking_space = CoworkingSpace.find(params[:coworking_space_id])
    @booking = Booking.new
  end

  def mybookings
    @bookings = current_user.bookings
  end

  def create
    @coworking_space = CoworkingSpace.find(params[:coworking_space_id]) # grabbing the coworking_space by the id in params
    @booking = Booking.new(booking_params) # creating the object with the filteredform data
    @booking.coworking_space = @coworking_space # setting the coworking_space on the booking (saving the relationship)
    @booking.user = current_user

    if @booking.save
      redirect_to coworking_space_booking_path(@coworking_space, @booking) # redirecting back to the BOOKING show path
    else
      render :new
    end   # saving the object
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def edit
     @booking = Booking.find(params[:id])
     @coworking_space = CoworkingSpace.find(params[:coworking_space_id])

  end

  def update
     @booking = Booking.find(params[:coworking_space_id])
     @booking.update(booking_params)
     redirect_to mydashboard_path
  end

  def approve
    @booking = Booking.find(params[:id])
    @booking.status = true
    @booking.save
    redirect_to mydashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_datetime, :end_datetime)
  end
end
