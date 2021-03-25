Rails.application.routes.draw do
  resources :tasks
  resources :projects
  resources :users, only: [:index, :show, :new, :create]
end
