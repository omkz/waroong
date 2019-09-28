Rails.application.routes.draw do
  devise_for :users
  namespace :admin do
      resources :orders
      resources :order_items
      resources :order_statuses
      resources :products
      resources :product_categories

      root to: "orders#index"
    end
  resources :charges
  resources :products, only: [:index, :show]
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
  root to: "products#index"
  
end