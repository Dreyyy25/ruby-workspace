Rails.application.routes.draw do
  get "/" => "dojos#index"
  get "/dojos" => "dojos#index"
end
