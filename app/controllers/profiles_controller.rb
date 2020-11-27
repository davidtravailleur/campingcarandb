class ProfilesController < ApplicationController
  def show
    @profile = current_user
    @reservations = current_user.reservations
    @bookings = current_user.bookings
    @camping_cars = current_user.camping_cars

  end
end
