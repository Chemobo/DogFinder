Rails.application.routes.draw do
  resources :dogs, only: [:index, :show, :create, :destroy]
  resources :users,  only: [:index, :show, :create]
  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  root :to => 'index#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
