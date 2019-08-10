Rails.application.routes.draw do
  root 'sessions#home'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/items/no_price', to: 'items#no_price'
  
  get '/auth/facebook/callback', to: 'sessions#create'
  
  resources :items
  resources :categories
  resources :menus
  resources :restaurants
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
