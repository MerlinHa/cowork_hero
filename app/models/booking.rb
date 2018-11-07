class Booking < ApplicationRecord
  belongs_to :coworking_space
  belongs_to :user
end
