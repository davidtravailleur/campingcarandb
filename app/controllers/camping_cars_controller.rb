class CampingCarsController < ApplicationController
  def index
    @camping_cars = CampingCar.all
  end

  def show
    @camping_car = CampingCar.find(params[:id])
  end

  def new
    @camping_car = CampingCar.new
  end

  def create
    @camping_car = CampingCar.new(camping_car_params)
    if @camping_car.save
      redirect_to  owner_camping_cars_path(@camping_car)
    else
      render :new
    end
  end

  private

  def camping_car_params
    params.require(:camping_car).permit(:user_id, :category, :title, :description, :brand, :sleeps_capacity, :price_per_day, :location, :availability)
  end
end
