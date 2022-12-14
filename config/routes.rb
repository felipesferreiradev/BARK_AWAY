Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => :registrations }

  root to: "pages#home"

  get "/dashboard", to: "pages#dashboard"
  resources :dog_walkers, only: [:index, :show, :new, :create, :destroy] do
    resources :bookings, only: [:index, :new, :create, :show, :destroy]
  end
end
