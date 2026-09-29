Rails.application.routes.draw do
  root "surveys#index"
  post "surveys" => "surveys#create"
  get "result" => "surveys#result"
end
