class Api::OrdersController < ApplicationController

  before_action :authenticate_user
  
  def create
    carted_products = current_user.carted_products.where(status: "carted")

    calculated_subtotal = 0
    carted_products.each do |carted_product|
      calculated_sutotal += carted_product.product.price * carted_product.quantity
    end

    calculated_tax = calculated_subtotal * 0.09
    calcualted_total = calculated_subtotal + calculated_tax

    @order = Order.new(
        user_id: current_user.id,
        subtotal: calculated_sutotal,
        tax: calculated_tax,
        total: calcualted_total
      )

    if @order.save
      carted_products.update_all(status: "purchase", order_id: @order.id)
      render 'show.json.jb'
    else
      render json: {errors: @order.errors.full_messages},
      status: :unprocessable_entity
    end
  end
end

def index
  @order = current_user.orders
  render 'index.json.jb'
end

def show
  @order = Order.find_by(id: params[:id])
  render 'show.json.jb'
end
