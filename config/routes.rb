Rails.application.routes.draw do
  resources :reviews
  resources :profiles
  resources :children
  resources :adults
  resources :books, only: [:index, :show, :create, :update, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get '/hello', to: 'application#hello_world'
  # Defines the root path route ("/")
  # root "books#index"
end
