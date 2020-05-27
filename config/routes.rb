Rails.application.routes.draw do
 
  namespace :api do
    get "/minicapstone_url" => "products#store_page"
  end
end
