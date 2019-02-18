Rails.application.routes.draw do
  ActiveAdmin.routes(self)
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
  resources :room_usages, only:[:index,:new]
  resources :mics
  resources :bands do
    collection do
      get 'new_regular'
      get 'new_temporal'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
