Rails.application.routes.draw do
  get "/" => "seminars#index"
  get "/seminars" => "seminars#index"
  get "/seminars/new" => "seminars#new"
  get "/seminars/:id" => "seminars#show"
  get "/seminars/:id/edit" => "seminars#edit"
  post "/seminars" => "seminars#create"
  patch "/seminars/:id" => "seminars#update"
  delete "/seminars/:id" => "seminars#destroy"
end
