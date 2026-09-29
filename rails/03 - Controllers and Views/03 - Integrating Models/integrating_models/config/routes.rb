Rails.application.routes.draw do
  # this must come before resources, or /users/total would match /users/:id (looking for a user with id "total")
  get "users/total" => "users#total"
  resources :users
end
