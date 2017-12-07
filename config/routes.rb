Rails.application.routes.draw do
  resources :users, except: [:destroy, :index]
  resources :cities, only: [:index, :show]
  resources :gigs
  get "signup", to: "users#new", as: "signup"
  get "signin", to: "sessions#new", as: "signin"
  post "/sessions", to: "sessions#create", as: "sessions"
  delete "/sessions", to: "sessions#destroy", as: "signout"
end
