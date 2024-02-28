class ProductsController < ApplicationController
  before_action :set_product

  def show
    @product = set_product
  end

  private
  def set_product
    @product = Product.find(params[:id])
  end

  def products_params
    params.require(:product).permit(:name, :price, :description, :stock, :category, :photo_url)
  end
end
