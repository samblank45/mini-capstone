class Api::ProductsController < ApplicationController

  def store_page
    @products = Product.all
    render 'store.json.jb'
  end

end
