Rails.application.routes.draw do
  resources :posts do
    resources :comments
  end
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

root "posts#index"
  get "login", to: "sessions#new"
  get "logout", to: "sessions#destroy"
  get "signup", to: "users#new"
  get "sessions", to: "sessions#new"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
