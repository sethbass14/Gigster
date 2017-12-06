Rails.application.routes.draw do
  resources :users, except: [:destroy, :index]
  resources :cities, only: [:index]
  resources :gigs
end
