Rails.application.routes.draw do
  resources :islands
  resources :hikes
  resources :reviews
  #resources :users, only: [:show]
  get 'users/sign_up', to: 'users#new', as: 'sign_up'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
