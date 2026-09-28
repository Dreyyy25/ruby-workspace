Rails.application.routes.draw do
  get "seminars/index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
  root "seminars#index"
  get "seminars" => "seminars#index"

  # New Seminar Form
  get "seminars/new" => "seminars#new"
  
  # Create Seminar Action
  post "seminars" => "seminars#create"

  #RESTful routes for specific Seminar
  get "seminars/:id" => "seminars#show", as: "seminar"
  get "seminars/:id/edit" => "seminars#edit", as: "edit_seminar"
  patch "seminars/:id" => "seminars#update"
  put "seminars/:id" => "seminars#update"
  delete "seminars/:id" => "seminars#destroy"
end
