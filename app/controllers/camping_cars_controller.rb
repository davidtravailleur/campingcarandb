class CampingCarsController < ApplicationController
  def index
    @camping_cars = CampingCar.all
  end

  def show
    @camping_car = CampingCar.find(params[:id])
  end


end
