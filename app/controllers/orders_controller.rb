class OrdersController < ApplicationController
  before_action :set_order


  private
  def set_order
    @order = Order.find(params[:id])
  end

  def orders_params
    params.require(:order).permit(:quantity, :date)
  end
end
