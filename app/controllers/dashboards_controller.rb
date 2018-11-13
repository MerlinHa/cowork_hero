class DashboardsController < ApplicationController
  def mydashboard
    @myspaces = current_user.coworking_spaces
    @mybookings = current_user.bookings
    @myreviews = current_user.reviews
    # @myevaluations = @myspaces.reviews
  end


end


