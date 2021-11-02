Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "static_pages#root"

  namespace :api, defaults: { format: :json } do
    resource :session, only: [:create, :destroy]
    resources :users, only: [:show, :create]
    resources :recipes, only: [:show, :index, :create]
    resources :comments, only: [:create, :update, :destroy]
    resources :authors, only: [:show]
    resources :categories, only: [:show]
    resources :recipe_boxes, only: [:create, :destroy]
    resources :collections, only: [:show]
    resources :shoppings, only: [:show, :create, :destroy, :update]

    resources :ingredients, only: [:create]
  end
  
end
