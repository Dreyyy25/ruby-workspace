Rails.application.routes.draw do
  get "trainings/index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
  root "trainings#index"
  get "trainings" => "trainings#index"
  
  # New Training Form
  get "trainings/new" => "trainings#new"
  
  # Create Training Action
  post "trainings" => "trainings#create"

  # RESTful routes for specific Training session
  get "trainings/:id" => "trainings#show", as: "training"
  get "trainings/:id/edit" => "trainings#edit", as: "edit_training"
  patch "trainings/:id" => "trainings#update"
  put "trainings/:id" => "trainings#update"
  delete "trainings/:id" => "trainings#destroy"
end
