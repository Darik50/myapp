Rails.application.routes.draw do
  root 'work#index'
  #root 'main#index'

  resources :values
  resources :themes
  resources :images
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  get 'main/index'
  get 'main/help'
  get 'main/contacts'
  get 'main/about'
  get 'work/index'
  get 'work/choose_theme'
  get 'work/display_theme'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # main
  match 'index',    to: 'main#index',           via: 'get'
  match 'about',    to: 'main#about',           via: 'get'
  match 'help',     to: 'main#help',            via: 'get'
  match 'contacts', to: 'main#contacts',        via: 'get'
  match 'results_list',     to: 'work#results_list', via: :get

  # work
  match 'work',             to: 'work#index',             via: 'get'
  match 'choose_image',     to: 'work#choose_image',      via: :get
  match 'choose_theme',     to: 'work#choose_theme',      via: :get
  match 'display_theme',    to: 'work#display_theme',     via: :post

  namespace :api, defaults: { format: :json } do
    match 'next_image', to: 'api#next_image', via: :get
    match 'prev_image', to: 'api#prev_image', via: :get
    match 'save_value',       to: 'api#save_value',   via: :get
  end

  # users
  match 'sign_up',           to: 'users#new',           via: 'get'

  # sessions
  match 'sign_in',           to: 'sessions#new',           via: 'get'
  match 'sign_out',          to: 'sessions#destroy',       via: 'get'
  match 'sign_out',          to: 'sessions#destroy',       via: 'delete'

end
