Rails.application.routes.draw do
  get "/" => "seminars#index"
  get "/seminars" => "seminars#index"
end
