class ProfilesController < ApplicationController
  def show
    @profile = current_user
    @bookings = current_user.bookings
  end
end
