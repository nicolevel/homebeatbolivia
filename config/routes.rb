Rails.application.routes.draw do

  get 'searches/new'
  get 'searches/show'
  get 'items/corporativo'
  get 'items/homeaudio'
  get 'items/index'
  get 'items/proaudio'

  devise_for :users
  root to: 'pages#home'
  resources :items
  resources :searches
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
