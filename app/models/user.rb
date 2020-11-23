class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :camping_cars
  has_many :reservations, through: :camping_cars, source: :bookings #as owner
  has_many :bookings #as renter
end
