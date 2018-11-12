class CoworkingSpace < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch
  pg_search_scope :search_by_name,
    against: [ :name, :short_desc, :long_desc, :city, :country, :address, :services ],
    using: {
      tsearch: { prefix: true }
    }


  belongs_to :user
  has_many :bookings

  mount_uploader :photo, PhotoUploader

end
