Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :items
  resources :itemorderjoiners
  resources :locations
  resources :orders
  resources :users

  get '/orders/:id/checkout/', to: 'orders#checkout'
  post '/orders/:id/checkout/', to: 'orders#checkout'

  get '/users/:id/add_balance', to: 'users#add_balance'
  post '/users/:id/add_balance', to: 'users#add_balance'

  post '/users/:id/add_five', to: 'users#add_five'
  post '/users/:id/add_one', to: 'users#add_one'
  post '/users/:id/add_ten', to: 'users#add_ten'


  get 'welcome', to: 'users#welcome'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'


  delete '/logout', to: 'sessions#destroy'

end
