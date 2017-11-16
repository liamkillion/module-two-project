Rails.application.routes.draw do
  resources :users do
    resources :outfits
    resources :articles
  end
  resources :article_outfits
  post "/login", to: "sessions#create"
  get "/", to: "static#home", as: "root"
  post '/users/:id/outfits/new', to: 'outfits#create'
<<<<<<< HEAD
  post '/users/:id/articles/new', to: 'articles#create'
=======
>>>>>>> 329a4c71cf50d0699923e7a4907dabed602e7998
  # get '/users/:id/outfits/:id' to: 'outfits#show'
  #get '/users/articles/:id/add_to_outfit/:id'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
