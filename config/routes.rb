Rails.application.routes.draw do
  devise_for :users
  get 'home/front'
 resources :products
  resources :orders
  resources :categories
  resources :temporders
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root to: "home#front"
end
