Rails.application.routes.draw do

  root to: "base#index"

  get "/category/:category" => "base#category"
  get "/category/:category/:item" => "base#item"

  get "/post/new" => "base#new_post"
  get "/post/new/:page" => "base#new_post"

end
