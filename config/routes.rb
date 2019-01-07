Rails.application.routes.draw do
  resources :comments
  resources :presentations
  resources :events
  resources :room_usages
  resources :mics
  resources :bands
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
