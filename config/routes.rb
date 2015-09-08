Rails.application.routes.draw do
  get '/auth/github/callback', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get  '/dashboard', to: 'dashboard#show'
  root 'home#show'
end
