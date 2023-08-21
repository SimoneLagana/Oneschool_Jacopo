Rails.application.routes.draw do
  get 'oneschool/index'
  root "oneschool#index"

  get "/oneschool", to: "oneschool#index"

  #routes for admin:
  get "/admin/signup", to: "admin#signup"
  post "/admin/create", to: "admin#create" 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # namespace :admin do
  #   resources :schools, only: [:new, :create, :destroy]
  # end
  # namespace :admin do
  #   resources :users
  # end
  
end
