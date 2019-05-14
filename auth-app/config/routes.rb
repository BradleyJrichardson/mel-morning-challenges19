Rails.application.routes.draw do
  devise_for :users
  resources :users

  resources :dashboard
  root 'users#index'

  
end
