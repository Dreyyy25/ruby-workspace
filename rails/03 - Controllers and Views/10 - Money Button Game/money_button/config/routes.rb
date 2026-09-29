Rails.application.routes.draw do
  root "game#index"
  post "low" => "game#low"
  post "moderate" => "game#moderate"
  post "high" => "game#high"
  post "severe" => "game#severe"
  post "reset" => "game#reset"
end
