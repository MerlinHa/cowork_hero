class Booking < ApplicationRecord
  belongs_to :coworking_space
  belongs_to :user

  validates :coworking_space, presence: true
  validates :user_id, presence: true
  validates :start_datetime, :end_datetime, presence: true
  validates :status, presence: true
end
