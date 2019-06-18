Rails.application.routes.draw do
  resources :order_products
  resources :orders
  resources :addresses
  resources :products
  devise_for :users
  get 'home/index'
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
