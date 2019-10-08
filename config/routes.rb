Rails.application.routes.draw do

  resources :cities, param: :slug do
    resources :subcategories
    resources :categories
  end 

  resources :counties, param: :slug  do
    resources :subcategories
    resources :categories
  end

  root to: "counties#show"

  get "/category/:category" => "base#category"
  get "/category/:category/:subcategory" => "base#category"
  get "/category/:category/subcategory/:subcategory/:item" => "base#item"

  get "/post/new/:page" => "base#new_post"

end
