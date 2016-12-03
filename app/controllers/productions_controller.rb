class ProductionsController < ApplicationController
  before_action :set_production, only: [:show, :edit, :destroy]
  def index
    @productions = Production.all
  end

  def show
  end

  def new
    @production = Production.new
  end

  def create
    @production = Production.new(production_params)
    @production.user = current_user
    @production.status = "Disponible à la vente"
    if @production.save
      redirect_to production_path(@production)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def production_params
    params.require(:production).permit(:name, :quantity, :unit, :price, :price_unit)
  end

  def set_production
    @production = Production.find(params[:id])
  end
end
