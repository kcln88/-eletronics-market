class ProductsController < ApplicationController
  before_action :set_product


  private
  def set_product
    @product = Product.find(params[:id])
  end

  def products_params
    params.require(:product).permit(:name, :price, :description, :stock, :category, :photo_url)
  end
end
