class Booking < ApplicationRecord
  belongs_to :coworking_space
  belongs_to :user

  validates :coworking_space, presence: true
  validates :user_id, presence: true
  validates :start_datetime, :end_datetime, presence: true

  def calc_total_days_booked
    total_days_booked =  Date.parse(self.end_datetime) - Date.parse(self.start_datetime)
    integer_total_days = total_days_booked.to_i
  end

  def calc_total_price
    total_days =  Date.parse(end_datetime) - Date.parse(start_datetime)
    integer_days = total_days.to_i
    self.coworking_space.price * integer_days
  end

  # def user
  #   User.find(self.user_id)
  # end
end


