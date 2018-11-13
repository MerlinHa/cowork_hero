class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings
  has_many :reviews, through: :bookings

  has_many :coworking_spaces, dependent: :destroy
  validates :name, presence: true

  has_many :coworking_spaces, dependent: :destroy
  # validates :name, presence: true
  mount_uploader :photo, PhotoUploader


end
