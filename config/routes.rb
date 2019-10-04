Rails.application.routes.draw do

  resources :cities do
    resources :subcategories
    resources :categories
  end 

  resources :counties do
    resources :subcategories
    resources :categories
  end

  resources :categories do
    resources :subcategories
  end

  resources :subcategories
  resources :categories

  root to: "counties#show"

  get "/category/:category" => "base#category"
  get "/category/:category/:subcategory" => "base#category"
  get "/category/:category/subcategory/:subcategory/:item" => "base#item"

  get "/post/new/:page" => "base#new_post"

end
