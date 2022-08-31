Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :dog_walkers, only: [:index, :show] do
    resources :bookings, only: [:index, :new, :create, :show, :destroy]
  end
end
