require 'date'

class OrdersController < ApplicationController
  before_action :authenticate_user!

  def create
    @product = Product.find(params[:product_id])
    @order = Order.new(orders_params)
    @order.date = Date.today
    @order.product = @product
    @order.user = current_user
    if @order.save
      redirect_to order_path(@order)
    else
      render :product, status: :unprocessable_entity
    end
  end

  def show
    @order = Order.find(params[:id])
  end

  private

  def orders_params
    params.require(:order).permit(:quantity)
  end
end
