require 'date'
require 'stripe'
Stripe.api_version = "2018-02-28"

class OrdersController < ApplicationController
  before_action :authenticate_user!

  def create
    @product = Product.find(params[:product_id])
    @order = Order.new(orders_params)
    @order.date = Date.today
    @order.product = @product
    @order.user = current_user
    @order.state = "pending"
    if @order.save
      session = Stripe::Checkout::Session.create(
        payment_method_types: ['card'],
        line_items: [{
          name: @product.name,
          # images: [@product.photo_url],
          amount: @product.price_cents,
          currency: 'brl',
          quantity: @order.quantity
        }],
        success_url: order_url(@order),
        cancel_url: order_url(@order)
      )

      @order.update(checkout_session_id: session.id)
      redirect_to new_order_payment_path(@order)
    else
      render :product, status: :unprocessable_entity
    end
  end

  def show
    @order = current_user.orders.find(params[:id])
  end

  private

  def orders_params
    params.require(:order).permit(:quantity)
  end
end
