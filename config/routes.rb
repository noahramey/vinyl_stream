Rails.application.routes.draw do
  resources :accounts
  resources :items
  root :to => "home#index"

  resources :home, :only => [:index]

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
