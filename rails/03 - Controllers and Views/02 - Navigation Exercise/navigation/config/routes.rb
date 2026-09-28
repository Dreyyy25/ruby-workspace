Rails.application.routes.draw do
  get "count/count"
  get "count/reset"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Main Controller Routes 
  get "/main/hello", to: "main#hello"
  get "/main/say/hi", to: "main#say"
  get "/main/say_anything/:message", to: "main#say_anything"
  get "/main", to: "main#index"
  root "main#index"
  get "/main/danger", to: "main#danger"

  # Count Controller Routes
  get "/count", to: "count#count"
  get "/count/reset", to: "count#reset"

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
