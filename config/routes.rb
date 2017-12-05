Rails.application.routes.draw do
  resources :user, except: [:destroy, :index]
  resources :cities, only: [:index]
  resources :gigs
end
