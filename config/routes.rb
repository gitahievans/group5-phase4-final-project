Rails.application.routes.draw do

  resources :landlords, only: [:index, :show, :create, :destroy]
  
  #houses
  resources :houses
  resources :tenants, only: [:index]

  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
