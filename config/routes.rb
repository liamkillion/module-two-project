Rails.application.routes.draw do
  resources :users do
    resources :outfits
    resources :articles
  end
  resources :article_outfits
  post "/login", to: "sessions#create"
  get "/", to: "static#home", as: "root"
  post '/users/:id/outfits/new', to: 'outfits#create'
  post '/users/:id/articles/new', to: 'articles#create'
<<<<<<< HEAD
  # get '/users/:id/outfits/:id' to: 'outfits#show'
  #get '/users/articles/:id/add_to_outfit/:id'
=======


>>>>>>> 5dcc197bf65229c7d2c77e968145b3a82b6f04a7
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
