class ReviewsController < ApplicationController

  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(params_review)
    @review.booking = @booking
    @review.user = current_user
    @review.save
    redirect_to mydashboard_path
  end

  def booking
    @booking = Booking.find(params[:booking_id])
end

  private

  def params_review
    params.require(:review).permit(:star, :content, :title)
  end

end
