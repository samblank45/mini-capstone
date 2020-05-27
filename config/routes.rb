Rails.application.routes.draw do
 
  namespace :api do
    get "/minicapstone_url" => "products#store_page"
    get "/product_url" => "products#product"
    get "/noncoffee_products_url" => "products#noncoffee"
  end
end
