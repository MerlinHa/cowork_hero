class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(params_review)
    @review.save
    redirect_to mydashboard
  end

  private

  def params_review
    params.require(:review).permit(:stars, :content)
  end

end
