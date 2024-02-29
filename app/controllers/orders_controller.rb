class OrdersController < ApplicationController
  before_action :set_order
  before_action :authenticate_user!

  def new
    @order = Order.new
  end

  def create
    # a logica do order create será diferente -> botao confirma compra
    # @product = Product.find(params[:product_id])
    # @order = Order.new(orders_params)
    # @order.product = @product
    # @order.user = current_user
    # if @order.save
    #   redirect_to home
    # else
    #   render :order, status: :unprocessable_entity
    # end
  end

  private

  def set_order
    @order = Order.find(params[:id])
  end

  def orders_params
    params.require(:order).permit(:quantity, :date)
  end
end
