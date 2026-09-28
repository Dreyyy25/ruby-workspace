Rails.application.routes.draw do

  get "seminars/index"
  get "/seminars" => "seminars#index"
  get "/seminars/:id" => "seminars#show"
  get "seminars/new" => "seminars#new"
  get "/seminars/:id/edit" => "seminars#edit"
  post "/seminars" => "seminars#create"

  patch "/seminars/:id" => "seminars#update"

  delete "/seminars/:id" => "seminars#destroy"

  get "seminars/:seminar_id/attendees/new" => "attendees#new"
  get "seminars/:seminar_id/attendees/:attendee_id" => "attendees#show"
  get "seminars/:seminar_id/attendees/:attendee_id/edit" => "attendees#edit"
  post "seminars/:seminar_id/attendees" => "attendees#create"
  patch "seminars/:seminar_id/attendees/:attendee_id" => "attendees#update"
  delete "seminars/:seminar_id/attendees/:attendee_id" => "attendees#destroy"
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
