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
      redirect_to product_path(@product)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @order = Order.new
    @products = Product.all
  end

  def edit
  end

  def update
    if @product.update(products_params)
      redirect_to edit_product_path(@product)
    else
      render :edit, status: unprocessable_entity
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
