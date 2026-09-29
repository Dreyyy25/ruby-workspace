Rails.application.routes.draw do
  get "/" => "trainings#index"
  get "/trainings" => "trainings#index"
  get "/trainings/new" => "trainings#new"
  post "/trainings" => "trainings#create"
end
