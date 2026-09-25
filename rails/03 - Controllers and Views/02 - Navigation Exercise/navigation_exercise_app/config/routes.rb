Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # Root route (localhost:3000/)
  root "main#index"

  # Main routes
  get "main" => "main#index"
  get "main/hello" => "main#hello"
  get "main/say/hi" => "main#say"
  
  # Dynamic route segment: captures whatever string is passed after say_anything/
  get "main/say_anything/:word" => "main#say_anything"
  
  get "main/danger" => "main#danger"

  # Counter / Session routes
  get "count" => "main#count"
  get "count/reset" => "main#reset"
end
