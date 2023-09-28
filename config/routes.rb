Rails.application.routes.draw do
  resources :books, only: :index
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get '/hello', to: 'application#hello_world'
  # Defines the root path route ("/")
  # root "books#index"
end
