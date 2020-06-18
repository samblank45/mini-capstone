class ProductsController < ApplicationController

  def index
    @products = Product.all
    render 'index.html.erb'
  end

  def show
    @product = Product.find(params[:id])
    render 'show.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      stock: params[:stock],
      supplier_id: params[:supplier_id ]
    )
    @product.save
    @image = Image.new(
      url: params[:url],
      product_id: @product.id
     )
    @image.save
    if @product.save && @image.save
      redirect_to "/products/#{@product.id}"
    else 
      render json: {error: @product.errors.full_messages}, status: 422
    end
  end

  def edit
    @product = Product.find(params[:id])
    render 'edit.html.erb'
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name]
    @product.price = params[:price]
    @product.stock = params[:stock]
    @product.description = params[:description]
    @product.supplier_id = params[:supplier_id]
    @product.save
    redirect_to  "/products/#{@product.id}"
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    redirect_to "/products"
  end
end
