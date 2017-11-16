Rails.application.routes.draw do
  resources :users do
    resources :outfits
    resources :articles
  end
  resources :article_outfits
  post "/login", to: "sessions#create"
  get "/", to: "static#home", as: "root"
  post '/users/:id/outfits/new', to: 'outfits#create'
  # get '/users/:id/outfits/:id' to: 'outfits#show'
  #get '/users/articles/:id/add_to_outfit/:id'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
