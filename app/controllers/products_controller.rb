class ProductsController < ApplicationController
  before_action :set_product, except: [:new, :create]
  before_action :authenticate_user!

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(products_params)
    @product.user = current_user
    if @product.save
      redirect_to root_path
    else
      render :product, status: :unprocessable_entity
    end

  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def products_params
    params.require(:product).permit(:name, :price, :description, :stock, :category, :photo_url)
  end
end
