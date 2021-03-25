Rails.application.routes.draw do
  root 'users#welcome'
  resources :tasks
  resources :projects
  resources :users, only: [:index, :show, :new, :create]
  resources :login, only: [:new, :create, :destroy]
end
