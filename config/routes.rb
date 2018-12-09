Rails.application.routes.draw do
  namespace :admin do
      resources :orders
      resources :order_items
      resources :order_statuses
      resources :products

      root to: "orders#index"
    end
  resources :products, only: [:index, :show]
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
  root to: "products#index"
end