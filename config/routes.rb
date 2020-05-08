Rails.application.routes.draw do
  resources :gossips do
    resources :comments, except: [:index, :show]
  end
  resources :cities, only: [:show]
  resources :users, only: [:show, :new, :create]
end
