Rails.application.routes.draw do
  namespace :api do
    resources :todo_lists do
      resources :todo_items, only: [:create, :update, :destroy]
    end
  end

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  resources :sessions

  resources :todo_lists do
    resources :todo_items do
      member do
        patch :complete
      end
    end
  end

  root 'todo_lists#index'
end
