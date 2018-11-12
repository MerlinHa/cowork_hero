class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings
<<<<<<< HEAD
  has_many :coworking_spaces, dependent: :destroy
=======
  has_many :coworking_spaces
  validates :name, presence: true
>>>>>>> master
end
