class Owner::CampingCarsController < ApplicationController

  def new
    @camping_car = CampingCar.new
  end

  def create
    @camping_car = CampingCar.new(camping_car_params)
    @camping_car.user = current_user
    if @camping_car.save
      redirect_to owner_camping_cars_path
    else
      render :new
    end
  end

  def index
    @camping_cars = current_user.camping_cars
  end

  private

  def camping_car_params
    params.require(:camping_car).permit(:category, :title, :description, :brand, :sleeps_capacity, :price_per_day, :location, :availability, :photo)
  end
end
