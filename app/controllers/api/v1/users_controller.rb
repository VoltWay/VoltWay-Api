class Api::V1::UsersController < ApplicationController
  def index
  end

  def add_car
    @user = User.find(params[:id])
    @car = Car.find(params[:car_id])

    if @user.cars.include?(@car)
      render json: { error: "Car already added to user" }, status: :unprocessable_entity
    else
      @user.build << @car
      if @user.save
        head :created
      else
        render json: { error: "Failed to add car to user" }, status: :unprocessable_entity
      end
    end
  end

  def show
  end
end
