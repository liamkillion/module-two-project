Rails.application.routes.draw do
  get "/", to: "static#home", as: "root"
  resources :article_outfits
  resources :outfits
  resources :articles
  resources :users
  post "/login", to: "sessions#create"
  get "/", to: "static#home", as: "root"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
