class Api::OrdersController < ApplicationController

  before_action :authenticate_user

  def create
    @order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity]
    )
    if @order.save
      calc_subtotal = @order.product.price * @order.quantity
      calc_tax = calc_subtotal * 0.09
      calc_total = calc_subtotal + calc_tax 
      @order.update(
        subtotal: calc_subtotal,
        tax: calc_tax,
        total: calc_total
      )
      # calc_tax = calc_subtotal * 0.09
  
      render 'show.json.jb'
    else 
      render json: {error: @order.errors.full_messages}, status: 422
    end
  end

  def index
    @orders = current_user.orders
    render 'index.json.jb'
  end

  def show
    @order = Order.find_by(id: params[:id])
    render 'show.json.jb'
  end

end
