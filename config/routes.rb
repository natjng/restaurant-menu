Rails.application.routes.draw do
  root 'sessions#home'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/auth/facebook/callback', to: 'sessions#create'

  get '/items/no_price', to: 'items#no_price'
  get '/items/recently_updated', to: 'items#recently_updated'
  
  resources :menus do
    resources :items, only: [:index, :show, :new, :edit]
  end
  resources :items
  resources :categories, except: :destroy
  resources :restaurants
  resources :users, except: [:index, :edit, :update, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
