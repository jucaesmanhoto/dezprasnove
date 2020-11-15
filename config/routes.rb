Rails.application.routes.draw do
  get 'candidates/index'
  get 'candidates/show'
  get 'candidates/new'
  get 'applications/index'
  get 'applications/show'
  get 'applications/new'
  get 'opportunities/index'
  get 'opportunities/show'
  get 'opportunities/new'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'
  resources :opportunities do
    resources :applications, only: %i(new create)
  end
  resources :enterprises
  resources :candidates
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
