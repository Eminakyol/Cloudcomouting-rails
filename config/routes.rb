Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "categories#index"

  resources :categories, only: [:index, :show]
  resources :items, only: [:index, :show]
  post "/orders", to: "orders#place_order"
end
