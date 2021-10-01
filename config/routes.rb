Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "static_pages#root"

  namespace :api, defaults: { format: :json } do
    resource :session, only: [:create, :destroy]
    resources :users, only: [:show, :create]
    resources :recipes, only: [:show, :index]
    resources :comments, only: [:create, :edit, :destroy]
  end
  
end
