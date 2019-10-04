Rails.application.routes.draw do

  resources :recipes
  root to: 'home#index'
  resources :sessions, only: [:new, :create, :destroy]
  resources :user, only: [:show, :edit, :update]

  get 'user/:id/changepassword', to: 'user#change_password', as: 'change_password'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

end
