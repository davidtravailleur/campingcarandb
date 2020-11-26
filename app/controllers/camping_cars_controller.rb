class CampingCarsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @camping_cars = CampingCar.all
    if params[:city]
      @camping_cars = CampingCar.where("location ILIKE ?", "%#{params[:city]}%")
    end
  end

  def show
    @camping_car = CampingCar.find(params[:id])
  end

  private

  def camping_car_params
    params.require(:camping_car).permit(:user_id, :category, :title, :description, :brand, :sleeps_capacity, :price_per_day, :location, :availability, :photo)
  end
end
