Rails.application.routes.draw do
  root to: "base#index"

  get "/category/:category" => "base#category"
end
