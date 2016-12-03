class OrdersController < ApplicationController
  before_action :set_production, only: [:new, :create]
  def index
  end

  def show
  end

  def new
    @order = Order.new
  end

  def create
    @order = @production.orders.build(order_params)
    @order.status = "En attente de confirmation"
    @order.user = current_user
      binding.pry
    if @order.save
      redirect_to production_order_path(@production, @order)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  private

  def set_production
    @production = Production.find(params[:production_id])
  end

  def order_params
    params.require(:order).permit(:quantity)
  end

end
