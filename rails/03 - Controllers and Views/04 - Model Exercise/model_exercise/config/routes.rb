Rails.application.routes.draw do
  # this must come before resources, or /products/count would match /products/:id (looking for a product with id "count")
  get "products/count" => "products#count"
  resources :products
end
