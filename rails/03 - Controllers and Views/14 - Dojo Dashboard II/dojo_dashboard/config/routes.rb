Rails.application.routes.draw do
  get "/" => "dojos#index"
  get "/dojos" => "dojos#index"
  get "/dojos/new" => "dojos#new"
  post "/dojos" => "dojos#create"
end
