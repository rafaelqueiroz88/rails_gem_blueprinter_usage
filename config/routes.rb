Rails.application.routes.draw do
  root "users#index"

  resources :users
  resources :products
end
