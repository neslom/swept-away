Rails.application.routes.draw do
  root 'dashboard#index'

  get '/auth/:provider/callback', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'

  get '/schedule/:id', to: 'street_sweeps#schedule', as: 'schedule'

  post '/user_sections', to: 'street_sweeps#user_sections'

  post '/alerts/welcome', to: 'alerts#welcome'

  get '/users/:id', to: 'users#show', as: 'users'
end
