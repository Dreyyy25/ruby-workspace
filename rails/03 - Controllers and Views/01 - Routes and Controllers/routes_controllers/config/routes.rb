Rails.application.routes.draw do
  root "say#index"

  get "hello" => "hello#index"

  get "say/hello" => "say#hello"
  get "say/hello/:name" => "say#hello_name"

  get "times" => "times#index"
  get "times/restart" => "times#restart"
end
