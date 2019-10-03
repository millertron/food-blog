Rails.application.routes.draw do

  resources :recipes
  root to: 'home#index'
  resources :sessions, only: [:new, :create, :destroy]
  resources :user, only: [:edit, :update]

  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'


end
