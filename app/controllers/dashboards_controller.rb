class DashboardsController < ApplicationController
  def mydashboard
    @myspaces = current_user.coworking_spaces
    @mybookings = current_user.bookings
  end
end
