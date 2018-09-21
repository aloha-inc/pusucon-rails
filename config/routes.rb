Rails.application.routes.draw do
  resources :line_items
  resources :carts
  root 'searches#index', as: 'searches_index'
  resources :schools
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
