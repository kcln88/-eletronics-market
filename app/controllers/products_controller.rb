class ProductsController < ApplicationController
  before_action :set_product, except: [:new, :create, :index]
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
    @products = Product.where(category: @product.category).and(Product.where.not(id: @product.id))
  end

  def edit
    if @product.user != current_user
      redirect_to root_path
    end
  end

  def update
    if @product.user == current_user
      if @product.update(products_params2)
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

  def index
    @products = current_user.products.where(params[:id])
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def products_params
    params.require(:product).permit(:name, :price_cents, :description, :stock, :category, photos: [])
  end

  def products_params2
    params.require(:product).permit(:name, :price_cents, :description, :stock, :category)
  end
end
