Pingpong::Application.routes.draw do
  root to: 'users#index'

  resources :sessions, only: [:create, :destroy]
  resources :users, only: [:create]
end
