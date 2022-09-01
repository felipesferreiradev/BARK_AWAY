Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
<<<<<<< HEAD
<<<<<<< HEAD
  resources :dog_walkers, only: [:index, :show, :new, :create] do
=======
=======
>>>>>>> origin
  get "/dashboard", to: "pages#dashboard"
  resources :dog_walkers, only: [:index, :show] do
>>>>>>> b64b2079ea6704347eb33dd76c30d22c2b30d344
    resources :bookings, only: [:index, :new, :create, :show, :destroy]
  end
end
