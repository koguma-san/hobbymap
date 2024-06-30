Rails.application.routes.draw do
  devise_for :users
  root to: "homes#index"

  resources :golfs , only: [:index] do
    resources :records, only: [:index, :new, :crate]
  end

end
