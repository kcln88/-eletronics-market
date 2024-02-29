Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get "products/new", to: "products#new"
  post "products", to: "products#create"
  get "products/edit", to: "products#edit", as: :edit_product
  patch "products", to: "products#update"

  get "order/new", to: "orders#create"

  # get "order/new", to: "orders#create" -> pensar na rota

  # Defines the root path route ("/")
  # root "posts#index"
end
