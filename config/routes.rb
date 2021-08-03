Rails.application.routes.draw do
  resources :islands
  resources :hikes
  resources :reviews
  #resources :users
  get 'sign_up', to: 'users#new' 
  post 'sign_up', to: 'users#create'
  resources :users, only: [:show]

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
