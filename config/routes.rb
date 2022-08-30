Rails.application.routes.draw do
  devise_for :users
  root to: "dog_walkers#index"
  resources :dog_walkers, only: [:index, :show]
end
