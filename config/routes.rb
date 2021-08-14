Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :stores, only: [:index, :show] do
    resources :sessions, only: [:create]
  end

  resources :products, only: [:show] do
    resources :sessions_items, only: [:create]
  end

  resources :sessions_items, only: [:index, :destroy] #question?  resources :sessions, only: [:show] (nested?)

  resources :sessions, only: [:show, :edit, :update, :destroy]

end
