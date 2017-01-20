Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/product', to: 'products#products'
  get 'newprod', to: 'products#newprod'
  post 'result', to: 'products#result'
end
