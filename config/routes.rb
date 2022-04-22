Rails.application.routes.draw do
  resources :values
  resources :themes
  resources :images
  resources :users
  get 'main/index'
  get 'main/help'
  get 'main/contacts'
  get 'main/about'
  get 'main/images'
  #root 'main#index'
  root 'work#index'
  match 'work',                  to: 'work#index',                  via: 'get'
  match 'choose_theme',     to: 'work#choose_theme',      via: :get
  match 'display_theme',    to: 'work#display_theme',      via: :post
  resources :sessions, only: [:new, :create, :destroy]
  match 'signin', to: 'sessions#new', via: 'get'
  match 'signout', to: 'sessions#destroy', via: 'delete'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
