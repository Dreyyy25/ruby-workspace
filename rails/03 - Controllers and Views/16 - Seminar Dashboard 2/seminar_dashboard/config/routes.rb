Rails.application.routes.draw do
  get "/" => "seminars#index"
  get "/seminars" => "seminars#index"
  get "/seminars/new" => "seminars#new"
  post "/seminars" => "seminars#create"
end
