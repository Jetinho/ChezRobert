class UsersController < ApplicationController
  def show
  end

  def edit
  end

  def update
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :address, :producer, :farm_description, :photo, :farm_photo, :delivery, :delivery_conditions, :delivery_range)
  end
end
