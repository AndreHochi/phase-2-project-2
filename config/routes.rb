Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :items
  resources :itemorderjoiners
  resources :locations
  resources :orders
  resources :users

  post "/orders/:id", to: "orders#delete"
  post "/orders/:id", to: "orders#add_item"

  get 'welcome', to: 'users#welcome'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'

end
