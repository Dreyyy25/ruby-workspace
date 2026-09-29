Rails.application.routes.draw do
  root "feedback#index"
  post "feedback" => "feedback#create"
  get "result" => "feedback#result"
end
