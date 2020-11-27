class Owner::BookingsController < ApplicationController

  def accept
    @booking = Booking.find(params[:id])
    @booking.status = "approuved"
    if @booking.save
      redirect_to profile_path
    end
  end
  def deny
    @booking = Booking.find(params[:id])
    @booking.status = "refused"
    if @booking.save
      redirect_to profile_path
    end
  end
end
