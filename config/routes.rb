Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
<<<<<<< HEAD

  get "products/new", to: "products#new"
  post "products", to: "products#create"

=======
  get "order/new", to: "orders#create"
>>>>>>> 20d8997a413c5940e78b16fb54c2795dfe212e7b
  # Defines the root path route ("/")
  # root "posts#index"
end
