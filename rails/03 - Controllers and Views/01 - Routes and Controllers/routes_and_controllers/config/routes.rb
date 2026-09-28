Rails.application.routes.draw do
  get "times/times"
  get "times/restart"
  get "say/index"
  get "say/hello"
  get "say/hello_joe"
  get "say/hello_michael"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Hello Controller Routes
  get "/hello", to: "hello#hello"

  # Say Controller Routes
  get "/say/hello", to: "say#hello"
  get "/say/hello/joe", to: "say#hello_joe"
  get "/say/hello/michael", to: "say#hello_michael"
  root "say#index"

  # Times Controller Routes 
  get "/times", to: "times#times"
  get "/times/restart", to: "times#restart"

  
  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
