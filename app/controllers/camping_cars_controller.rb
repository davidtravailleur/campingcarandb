class CampingCarsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @camping_cars = CampingCar.all
    if params[:city]
      @camping_cars = CampingCar.where("location ILIKE ?", "%#{params[:city]}%")
    end
    @markers = @camping_cars.geocoded.map do |camping_car|
      {
        lat: camping_car.latitude,
        lng: camping_car.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { camping_car: camping_car }),
        image_url: helpers.asset_url('https://static.thenounproject.com/png/1791967-200.png')
      }

    end
  end

  def show
    @camping_car = CampingCar.find(params[:id])
    @booking = Booking.new
  end

  private

  def camping_car_params
    params.require(:camping_car).permit(:user_id, :category, :title, :description, :brand, :sleeps_capacity, :price_per_day, :location, :availability, :photo)
  end
end
