Rails.application.routes.draw do
  get 'meeting/index'
  root "articles#index"

  get "/articles", to: "articles#index"

  get "/meeting", to: "meeting#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
