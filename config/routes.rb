Rails.application.routes.draw do

  root to: 'home#index'
  resources :sessions, only: [:new, :create, :destroy]

  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  get 'user/edit'
  post 'user/update'

end
