Rails.application.routes.draw do
  root "main#index"

  get "main" => "main#index"
  get "main/hello" => "main#hello"
  get "main/say/hi" => "main#say"
  get "main/say_anything/:word" => "main#say_anything"
  get "main/danger" => "main#danger"

  get "count" => "main#count"
  get "count/reset" => "main#reset"
end
