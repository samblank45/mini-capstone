class Api::CartedProductsController < ApplicationController

  before_action :authenticate_user


  def index
    if current_user
      @carted_products = current_user.carted_products.where(status: "carted")

    end
    render 'index.json.jb'
  end


  def create
    if current_user
      @carted_product = CartedProduct.new(
        product_id: params[:product_id],
        quantity: params[:quantity],
        user_id: current_user.id,
        status: "carted"
      )
      @carted_product.save
      render 'show.json.jb'
    end
  end

  def destroy
    @carted_product = current_user.carted_products.find_by(id: params[:id], status: "carted")
    @carted_product.update(status:"removed")
    render json: {status: "Carted product removed"}
  end


end
