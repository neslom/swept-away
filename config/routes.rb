Rails.application.routes.draw do
  root 'dashboard#index'

  get '/auth/:provider/callback', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'

  resources :street_sweeps

  get '/search', to: 'street_sweeps#search'
end
