class UsersController < ApplicationController
  before_action :set_user
  skip_before_action :authenticate_user!, only: :show

  def show
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to user_path
    else
      render :edit
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :address, :producer, :farm_description, :photo, :farm_photo, :delivery, :delivery_conditions, :delivery_range)
  end
end
