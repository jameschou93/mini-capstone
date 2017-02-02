Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# ProductsControll
  root to: 'products#index'
  get '/products', to: 'products#index'
  get '/new', to: 'products#new'
  get '/products/:id/edit', to: 'products#edit'
  patch '/products/:id', to: 'products#update'
  get '/products/:id', to: 'products#show'
  post '/products', to: 'products#create'
  delete '/products/:id', to: 'products#destroy'

# SupplierController
  get '/suppliers', to: 'supplier#index'
  get '/suppliers/:id', to: 'supplier#show'

# ImagesController
  get '/images/new', to: 'image#new'
  post '/images', to: 'image#create'
# signup
  get '/signup', to: 'users#new'
  post '/users', to: 'users#create'
# login
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
# orders
  post '/orders', to: 'orders#create'
  get '/orders/:id', to: 'orders#show'

end
