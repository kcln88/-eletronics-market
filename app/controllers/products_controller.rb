class ProductsController < ApplicationController
  before_action :set_product, except: [:new, :create]
  before_action :authenticate_user!, except: [:show]

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
    if @product.user != current_user
      redirect_to root_path
    end
  end

  def update
    if @product.user == current_user
      if @product.update(products_params)
        redirect_to product_path(@product)
      else
        render :edit, status: unprocessable_entity
      end
    else
      redirect_to root_path
    end
  end

  def destroy
    @product.destroy
    redirect_to root_path, status: :see_other
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def products_params
    params.require(:product).permit(:name, :price, :description, :stock, :category, :photo)
  end
end
