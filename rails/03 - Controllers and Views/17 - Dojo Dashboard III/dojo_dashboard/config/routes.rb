Rails.application.routes.draw do
  get "/" => "dojos#index"
  get "/dojos" => "dojos#index"
  get "/dojos/new" => "dojos#new"
  get "/dojos/:id" => "dojos#show"
  get "/dojos/:id/edit" => "dojos#edit"
  post "/dojos" => "dojos#create"
  patch "/dojos/:id" => "dojos#update"
  delete "/dojos/:id" => "dojos#destroy"
end
