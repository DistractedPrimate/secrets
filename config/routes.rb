Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Point route to a controller

  get "about", to: 'about#index', as: :about
  get "signup", to: 'registration#new'
  post "signup", to: 'registration#create'

  get "signin", to: 'sessions#new'
  post "signin", to: 'sessions#create'
  delete "logout", to: 'sessions#destroy'

  root to: "main#index"
  # Defines the root path route ("/")
  # root "articles#index"
end
