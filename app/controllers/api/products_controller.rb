class Api::ProductsController < ApplicationController
  
  before_action :authenticate_admin, except: [:index, :show]

  def index
    @products = Product.all
    if params[:search]
      @products = Product.where("name iLIKE ?", "%#{params[:search]}%")
    end

    if params[:discount]
      @product = @product.where('price < ?', 10)
    end
    
    if params[:category]
      category = Category.find_by(name: params[:category])
      @products = category.products
    end


    if params[:sort] == "price"
      if params[:sort_order] == "asc"
        @products = @products.order(:price)
      elsif params[:sort_order] == "desc"
        @Products - @products.order(price: :desc)
      else 
        @products - @products.order(:id)
      end
    end
    render 'index.json.jb'
  end

  def show
    @product = Product.find_by(id:params['id'])
    render 'show.json.jb'
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      stock: params[:stock]
    )
    if @product.save
      render 'show.json.jb'
    else 
      render json: {error: @product.errors.full_messages}, status: 422
    end
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product.description
    @product.stock = params[:stock] || @product.stock
    if @product.save
      render 'show.json.jb'
    else 
      render json: {error: @product.errors.full_messages}, status: 422
    end
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: {message: "product destroyed successfully"}
  end
  
end


