Rails.application.routes.draw do
  root 'dashboard#index'

  get '/auth/:provider/callback', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'

  resources :street_sweeps, only: [:show]

  post '/alerts/welcome', to: 'alerts#welcome'

  get '/users/:id', to: 'users#show'
end
