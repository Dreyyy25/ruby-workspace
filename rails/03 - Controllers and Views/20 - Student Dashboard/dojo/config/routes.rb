Rails.application.routes.draw do
  # Dojos
  get "/dojos" => "dojo_branches#index"
  get "/dojos/new" => "dojo_branches#new"
  get "/dojos/:id" => "dojo_branches#show"
  get "/dojos/:id/edit" => "dojo_branches#edit"
  get "/" => "dojo_branches#index"

  post "/dojos" => "dojo_branches#create"
  patch "/dojos/:id" => "dojo_branches#update"
  delete "/dojos/:id" => "dojo_branches#destroy"

  # Dojo Students
  get "/dojos/:dojo_id/students/new" => "students#new"
  get "/dojos/:dojo_id/students/:student_id" => "students#show"
  get "/dojos/:dojo_id/students/:student_id/edit" => "students#edit"
  post "/dojos/:dojo_id/students" => "students#create"
  patch "/dojos/:dojo_id/students/:student_id" => "students#update"
  delete "/dojos/:dojo_id/students/:student_id" => "students#destroy"
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
