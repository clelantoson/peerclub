Rails.application.routes.draw do
  resources :groups
  resources :users, only: [:show]
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'groups#index'
  get 'ruby/index', to: 'udemy#index'
end