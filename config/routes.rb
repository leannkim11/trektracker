Rails.application.routes.draw do
  resources :destinations
  resources :trips
  resources :users
  resources :sessions, only: [:new, :create]
  delete '/logout', to: 'sessions#destroy', as: 'logout'
  get '/', to: 'sessions#new', as: 'trektracker'
  get '/index_for_all_trips', to: 'trips#index_for_all_trips', as: 'alltrips'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
