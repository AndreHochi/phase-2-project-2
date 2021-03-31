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


  get 'welcome', to: 'users#welcome'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'


  delete '/logout', to: 'sessions#destroy'

end
