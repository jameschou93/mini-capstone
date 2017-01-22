Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'products#index'
  get 'products', to: 'products#index'
  get 'new', to: 'products#new'
  get 'products/:id/edit', to: 'products#edit'
  patch 'products/:id', to: 'products#update'
  get 'products/:id', to: 'products#show'

  post 'products', to: 'products#create'
  delete '/products/:id', to: 'products#destroy'
end
