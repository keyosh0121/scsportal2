Rails.application.routes.draw do
  root to: 'users#index'
  devise_for :users
  resources :event_entries
  resources :reviews
  resources :comments
  resources :presentations
  resources :events
  resources :room_usages
  resources :mics
  resources :bands
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/order/:id', to: 'mics#order'
  post '/order/:id/:order', to: 'mics#order_update'
end
