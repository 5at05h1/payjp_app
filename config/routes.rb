Rails.application.routes.draw do
  get 'cards/new'
  get 'users/show'
  get 'items/index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'items#index'

  resources :users, only: [:show, :update]
  resources :cards, only: [:new, :create]
  resources :items, only: :order do
    post 'order', on: :member
  end

end