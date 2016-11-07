Rails.application.routes.draw do
  resources :accounts
  resources :items
  resources :carts, :only => [:show]
  resources :orders, :only => [:show, :create]
  root :to => "home#index"

  post "/hook" => "orders#hook"

  resources :home, :only => [:index]

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
