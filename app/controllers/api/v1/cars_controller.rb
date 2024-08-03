class Api::V1::CarsController < ApplicationController
  before_action(:set_cars)
  def index
  end

  private

  def set_cars
    @cars = Car.all
  end
end