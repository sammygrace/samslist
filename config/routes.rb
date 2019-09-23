Rails.application.routes.draw do

  resources :subcategories
  resources :categories
  resources :cities
  resources :counties
  root to: "base#index"

  get "/category/:category" => "base#category"
  get "/category/:category/:item" => "base#item"

  get "/post/new/:page" => "base#new_post"

end
