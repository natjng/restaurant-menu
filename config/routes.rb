Rails.application.routes.draw do
  root 'sessions#home'
  get '/logout', to: 'sessions#destroy'
  
  get '/auth/facebook/callback', to: 'sessions#create'
  
  resources :items
  resources :categories
  resources :menus
  resources :restaurants
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
