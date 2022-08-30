Rails.application.routes.draw do
  devise_for :users
<<<<<<< HEAD
  root to: "pages#home"
=======
  root to: "dog_walkers#index"
  resources :dog_walkers, only: [:index, :show]
>>>>>>> 5c373b01165a4a4154b685268cf98034d3f8e914
end
