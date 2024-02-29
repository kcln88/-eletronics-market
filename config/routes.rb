Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :products, only: %i[new create edit update show] do
    resources :orders, only: %i[create]
  end
    # get "products/new", to: "products#new"
  # post "products", to: "products#create"
  # get "products/edit", to: "products#edit", as: :edit_product
  # patch "products", to: "products#update"
  # get "products/:id", to: "products#show"

  # get "orders/new", to: "orders#new"
  # post "orders", to: "orders#create", as: "order_create"

  # Defines the root path route ("/")
  # root "posts#index"
end
