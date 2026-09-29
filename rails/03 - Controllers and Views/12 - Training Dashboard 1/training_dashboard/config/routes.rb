Rails.application.routes.draw do
  get "/" => "trainings#index"
  get "/trainings" => "trainings#index"
end
