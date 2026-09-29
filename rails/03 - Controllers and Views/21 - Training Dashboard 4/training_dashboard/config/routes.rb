Rails.application.routes.draw do
  get "/" => "trainings#index"
  get "/trainings" => "trainings#index"
  get "/trainings/new" => "trainings#new"
  get "/trainings/:id" => "trainings#show"
  get "/trainings/:id/edit" => "trainings#edit"
  post "/trainings" => "trainings#create"
  patch "/trainings/:id" => "trainings#update"
  delete "/trainings/:id" => "trainings#destroy"

  get "/trainings/:training_id/alumni" => "alumni#index"
  get "/trainings/:training_id/alumni/new" => "alumni#new"
  post "/trainings/:training_id/alumni" => "alumni#create"
  get "/trainings/:training_id/alumni/:id" => "alumni#show"
  get "/trainings/:training_id/alumni/:id/edit" => "alumni#edit"
  patch "/trainings/:training_id/alumni/:id" => "alumni#update"
  delete "/trainings/:training_id/alumni/:id" => "alumni#destroy"
end
