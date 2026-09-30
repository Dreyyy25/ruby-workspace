Rails.application.routes.draw do
  get "/" => "users#index"
  get "/users" => "users#index"
  post "/users" => "users#create"
  get "/posts" => "posts#index"
  post "/posts" => "posts#create"
end
