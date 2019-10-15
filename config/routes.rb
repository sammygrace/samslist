Rails.application.routes.draw do

  resources :posts, param: :slug

  resources :cities, param: :slug do
    resources :subcategories, param: :slug
    resources :categories, param: :slug 
  end 

  resources :counties, param: :slug do
    resources :subcategories, param: :slug 
    resources :categories, param: :slug 
  end

  root to: "counties#show"

end
