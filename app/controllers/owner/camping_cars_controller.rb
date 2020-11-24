class Owner::CampingCarsController < ApplicationController

  def new
    @camping_car = CampingCar.new
  end

  def create
    @camping_car = CampingCar.new(camping_car_params)
    @camping_car.user = current_user
    if @camping_car.save
      redirect_to owner_camping_cars_path(@camping_car)
    else
      render :new
    end
  end

  private

  def camping_car_params
    params.require(:camping_car).permit(:category, :title, :description, :brand, :sleeps_capacity, :price_per_day, :location, :availability, :photo)
  end
end
