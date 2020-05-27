class Api::ProductsController < ApplicationController

  def store_page
    @products = Product.all
    render 'store.json.jb'
  end

  def product
    @product = Product.first
    render 'product.json.jb'
  end

  def noncoffee
    @product = Product.find_by(id:4)
    render 'noncoffee.json.jb'
  end

end
