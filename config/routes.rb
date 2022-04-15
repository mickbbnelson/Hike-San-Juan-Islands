Rails.application.routes.draw do
  root to: 'welcome#home'

  get 'sign_up', to: 'users#new' 
  post 'sign_up', to: 'users#create'

  get '/auth/facebook/callback', to: 'sessions#omniauth' 

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  # get '/auth/facebook/callback', to: 'sessions#omniauth' 
  get '/logout', to: 'sessions#destroy'
  resources :users, only: [:show]
  
  resources :islands, only: [:index, :show] do
    resources :hikes, only: [:show] 
  end

  resources :hikes, only: [:show] do
    resources :reviews, shallow: true
  end
end
