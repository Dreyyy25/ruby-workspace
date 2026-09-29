Rails.application.routes.draw do
  get "/" => "seminars#index"
  get "/seminars" => "seminars#index"
  get "/seminars/new" => "seminars#new"
  get "/seminars/:id" => "seminars#show"
  get "/seminars/:id/edit" => "seminars#edit"
  post "/seminars" => "seminars#create"
  patch "/seminars/:id" => "seminars#update"
  delete "/seminars/:id" => "seminars#destroy"

  get "/seminars/:seminar_id/attendees" => "attendees#index"
  get "/seminars/:seminar_id/attendees/new" => "attendees#new"
  get "/seminars/:seminar_id/attendees/:id" => "attendees#show"
  get "/seminars/:seminar_id/attendees/:id/edit" => "attendees#edit"
  post "/seminars/:seminar_id/attendees" => "attendees#create"
  patch "/seminars/:seminar_id/attendees/:id" => "attendees#update"
  delete "/seminars/:seminar_id/attendees/:id" => "attendees#destroy"
end
