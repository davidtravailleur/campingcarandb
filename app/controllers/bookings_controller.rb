class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.camping_car = CampingCar.find(params[:camping_car_id])
    @booking.total_price = @booking.camping_car.price_per_day * (( @booking.end_date - @booking.start_date ).to_i)
    if @booking.save
      redirect_to owner_camping_cars_path
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :camping_car_id)
  end
end
