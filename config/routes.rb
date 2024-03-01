Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get "up" => "rails/health#show", as: :rails_health_check

  resources :products, only: %i[show new create edit update] do
    resources :orders, only: %i[create]
  end
  resources :orders, only: :show
end
