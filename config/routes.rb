Rails.application.routes.draw do
  resources :groups do
    resources :subscriptions
  end
  devise_for :users
  resources :users, only: [:show]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'groups#index'
end