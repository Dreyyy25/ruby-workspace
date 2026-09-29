Rails.application.routes.draw do
  get "/" => "dojos#index"
  get "/dojos" => "dojos#index"
  get "/dojos/new" => "dojos#new"
  get "/dojos/:id" => "dojos#show"
  get "/dojos/:id/edit" => "dojos#edit"
  post "/dojos" => "dojos#create"
  patch "/dojos/:id" => "dojos#update"
  delete "/dojos/:id" => "dojos#destroy"

  get "/dojos/:dojo_id/students" => "students#index"
  get "/dojos/:dojo_id/students/new" => "students#new"
  post "/dojos/:dojo_id/students" => "students#create"
  get "/dojos/:dojo_id/students/:id" => "students#show"
  get "/dojos/:dojo_id/students/:id/edit" => "students#edit"
  patch "/dojos/:dojo_id/students/:id" => "students#update"
  delete "/dojos/:dojo_id/students/:id" => "students#destroy"
end
