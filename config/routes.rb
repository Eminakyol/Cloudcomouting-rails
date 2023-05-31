Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "items#index"

  resources :items, only: [:index, :show]
  post "place_order", to: "items#place_order"
end
