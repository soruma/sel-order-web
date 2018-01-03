Rails.application.routes.draw do
  get '/products/menu/:category', to: 'products#menu'

  resources :order_details
  resources :orders
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
