Rails.application.routes.draw do
  get "/" => "trainings#index"
  get "/trainings" => "trainings#index"
  get "/trainings/new" => "trainings#new"
  get "/trainings/:id" => "trainings#show"
  get "/trainings/:id/edit" => "trainings#edit"
  post "/trainings" => "trainings#create"
  patch "/trainings/:id" => "trainings#update"
  delete "/trainings/:id" => "trainings#destroy"
end
