Rails.application.routes.draw do
  devise_for :users
  root to: "homes#index"

  resources :golfs  , only: [:index]
  resources :records, only: [:index, :new, :create]
  resources :targets, only: [:index, :new, :create]
  resources :rounds, only: [:new, :create, :index, :show]
end
