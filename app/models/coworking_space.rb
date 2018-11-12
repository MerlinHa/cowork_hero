class CoworkingSpace < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch
  pg_search_scope :search_by_name,
    against: [ :name ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
  belongs_to :user
  has_many :bookings

  mount_uploader :photo, PhotoUploader

end
