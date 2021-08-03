Rails.application.routes.draw do
  resources :islands
  resources :hikes
  resources :reviews
  resources :users
  #get 'users/new', to: 'users#new' #, as: 'sign_up'
  #post 'users/', to: 'users#create'
  #resources :users, only: [:show]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
