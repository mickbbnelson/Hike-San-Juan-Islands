Rails.application.routes.draw do
  root to: 'welcome#home'
  #resources :islands, only: [:index, :show]
  resources :islands do
    resources :hikes, only: [:show, :index]
  end
  resources :hikes do
    resources :reviews, only: [:index, :new, :create]
  end
  resources :reviews only: [:show, :edit, :update, :destroy]
  #resources :users
  get 'sign_up', to: 'users#new' 
  post 'sign_up', to: 'users#create'
  resources :users, only: [:show]

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/auth/facebook/callback', to: 'sessions#omniauth'
  delete '/logout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
