Rails.application.routes.draw do
  get 'comments/new'
  get 'comments/create'
  get 'comments/edit'
  get 'comments/update'
  get 'comments/destroy'
  get 'cities/show'
  get '/', to: 'landing_page#welcome'
  get 'welcome', to: 'landing_page#welcome'
  get 'welcome/:user', to: 'landing_page#welcome'
  get 'users/:id', to: 'users#show'
  get 'team', to: 'static_pages#team'
  get 'contact', to: 'static_pages#contact'
  resources :gossips, only: [:show, :new, :create, :edit, :update, :destroy] do
    resources :comments, except: [:index, :show]
  end
  resources :cities, only: [:show]
end
