Rails.application.routes.draw do
  devise_for :users

  get 'home/index'
  root to: "home#index"

  resources :order_products
  resources :orders
  resources :addresses
  resources :products
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
