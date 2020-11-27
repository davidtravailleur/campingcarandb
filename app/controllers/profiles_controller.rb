class ProfilesController < ApplicationController

  def show
    @profile = current_user
    @reservations = Booking.joins(:camping_car).where(camping_cars: { user: current_user })
    @bookings = current_user.bookings
    @camping_cars = current_user.camping_cars
  end
end
