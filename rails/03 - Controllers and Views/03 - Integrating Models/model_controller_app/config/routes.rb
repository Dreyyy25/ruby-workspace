Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")

  #WARNING: Always place static routes like users/total BEFORE wildcard dynamic routes like users/:id. 
  #If /users/:id comes first, visiting /users/total will make Rails think the string "total" is an ID, causing a database lookup error!

  # List all users (JSON)
  get "users" => "users#index"

  # Form to create new user (HTML View)
  get "users/new" => "users#new"

  # Total users count (MUST be placed before /users/:id)
  get "users/total" => "users#total"

  # Show single user (JSON)
  get "users/:id" => "users#show"

  # Form to edit single user (HTML View)
  get "users/:id/edit" => "users#edit"

  # Handle form submission to create user
  post "users" => "users#create"
end
