Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # Root route
  root "says#index"

  # Hello & Say routes
  get "hello" => "says#hello"
  get "say/hello" => "says#say_hello"
  get "say/hello/michael" => "says#michael"
  get "say/hello/joe" => "says#joe"

  # Session / Counter routes
  get "times" => "says#times"
  get "times/restart" => "says#restart"
end
