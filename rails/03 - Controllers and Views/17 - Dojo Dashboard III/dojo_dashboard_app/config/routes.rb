Rails.application.routes.draw do
  get "dojos/index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
  root "dojos#index"
  get "dojos" => "dojos#index"
  
  # New Dojo Form
  get "dojos/new" => "dojos#new"
  
  # Create Dojo Action
  post "dojos" => "dojos#create"

  # RESTful routes for a specific Dojo
  get "dojos/:id" => "dojos#show", as: "dojo"
  get "dojos/:id/edit" => "dojos#edit", as: "edit_dojo"
  patch "dojos/:id" => "dojos#update"
  put "dojos/:id" => "dojos#update"
  delete "dojos/:id" => "dojos#destroy"
end
