Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :items
  resources :itemorderjoiners
  resources :locations
  resources :orders
  resources :users

  post '/orders/:id/checkout/', to: 'orders#checkout'

  post '/orders/:id/paynow/', to: 'orders#paynow'

  post '/orders/:id/discount/', to: 'orders#discount'
  get '/users/:id/add_balance', to: 'users#add_balance'
  post '/users/:id/add_balance', to: 'users#add_balance'

  post '/users/:id/add_five', to: 'users#add_five'
  post '/users/:id/add_one', to: 'users#add_one'
  post '/users/:id/add_ten', to: 'users#add_ten'
  post '/users/:id/add_twenty', to: 'users#add_twenty'


  get 'welcome', to: 'users#welcome'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'


  delete '/logout', to: 'sessions#destroy'

end
