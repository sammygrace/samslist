Rails.application.routes.draw do
  root to: "base#index"

  get "/antiques" => "base#category"
end
