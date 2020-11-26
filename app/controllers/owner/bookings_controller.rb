class Owner::BookingsController < ApplicationController
  def accept
    @booking = Booking.find(params[:id])
    @booking.status = "Approuved"
    if @booking.save
      redirect_to profile_path
    end
  end
  def deny
    @booking = Booking.find(params[:id])
    @booking.status = "Refused"
    if @booking.save
      redirect_to profile_path
    end
  end
end
