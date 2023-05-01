Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"  get "signup", to: "users#new"

  root "home#main"
  get "userpage", to: "users#homepage"
  get "sellerpage", to: "sellers#homepage"

  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"

  resources :products

  resources :sellers, except: [:new]
  get "seller_signup", to: "sellers#new"
  get "seller_products", to: "seller#products"

  resources :users, except: [:new]
  get "user_signup", to: "users#new"
  get "user_orders", to: "user#orders"
  get "user_cart", to: "user#cart"


end
