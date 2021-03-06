Rails.application.routes.draw do
  resources :groups do
    resources :subscriptions
  end
  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions', confirmations: 'users/confirmations', passwords: 'users/passwords', unlocks: 'users/unlocks', omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :users, only: [:show]
  resources :comments, only: [:new, :create, :show, :destroy]
  resources :avatars, only: [:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
end
