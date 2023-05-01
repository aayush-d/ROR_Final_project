Rails.application.routes.draw do
  devise_for :bidders, controllers: { sessions: "bidders/sessions", registrations: "bidders/registrations"}
  devise_for :sellers, controllers: { sessions: "sellers/sessions", registrations: "sellers/registrations"}
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "home#welcome"
  resources :items
  get "place_bid/:id", to: "items#place_bid", as: "place_bid"
  patch "place_bid/:id", to: "items#place_bid_post", as: "place_bid_post"

  get "sellers/:id", to: "sellers#show", as: "seller_profile_page"
  get "bidders/:id", to: "bidders#show", as: "bidder_profile_page"

  get "home/login_page", to: "home#login_page", as: "home_login_page"
  get "home/sign_up_page", to: "home#sign_up_page", as: "home_sign_up_page"
end
