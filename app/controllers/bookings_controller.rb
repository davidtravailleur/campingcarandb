class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    if @booking.save
      redirect_to owner_camping_cars_path
    else
      render :new
    end
  end

  def index
    @bookings = current_user.camping_cars
  end

  private

  def booking_params
    params.require(@booking).permit(:start_date, :end_date, :total_price, :status)
  end
end
