Rails.application.routes.draw do
  get "trainings/index"
  get "trainings" => "trainings#index"
  get "trainings/:id" => "trainings#show"
  get "trainings/:id/edit" => "trainings#edit"
  get "trainings/new" => "trainings#new"
  post "trainings" => "trainings#create" 
  patch "trainings/:id" => "trainings#update"
  delete "trainings/:id" => "trainings#destroy"

  get "trainings/:training_id/alumns/new" => "alumns#new"
  get "trainings/:training_id/alumns/:alumn_id" => "alumns#show"
  get "trainings/:training_id/alumns/:alumn_id/edit" => "alumns#edit"
  post "trainings/:training_id/alumns" => "alumns#create"
  patch "trainings/:training_id/alumns/:alumn_id" => "alumns#update"
  delete "trainings/:training_id/alumns/:alumn_id" => "alumns#destroy"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
