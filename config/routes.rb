# frozen_string_literal: true

Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root to: "users#show"
  devise_for :users
  resources :users, only: [:show] do
    collection do
      get "search"
    end
  end
  resources :event_entries
  resources :reviews
  resources :comments
  resources :presentations
  resources :events
  resources :room_usages, only: %i[index new]
  resources :mics
  resources :bands, only: [:index]
  resources :regular_bands, only: %i[new create show edit update]
  resources :temporal_bands, only: %i[new create show edit update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/mics/order/:id", to: "mics#order"
  post "/mics/order/:id/:order", to: "mics#order_update"
end
