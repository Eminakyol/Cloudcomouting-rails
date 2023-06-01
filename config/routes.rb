Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "categories#index", defaults: { format: :json }

  resources :categories, only: [:index, :show], defaults: { format: :json }
  post "/order", to: "orders#place_order", defaults: { format: :json }

  match "*path",   to: "application#not_found", via: :all
end
