Rails.application.routes.draw do
  get 'rooms/index'
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'

  resources :rooms
  resources :users

  root 'rooms#index'
end
