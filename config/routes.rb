Rails.application.routes.draw do
  root to: 'users#show'
  devise_for :users
  resources :users, only: [:show] do
    collection do
      get 'search'
    end
  end
  resources :event_entries
  resources :reviews
  resources :comments
  resources :presentations
  resources :events
  resources :room_usages
  resources :mics
  resources :bands
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
