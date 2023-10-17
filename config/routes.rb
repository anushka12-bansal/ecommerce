Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  # post "users/", to: "users#create"
  resources :users
  # resources :books
  # get "users/", to: "users#index"
  # get "users/new", to: "users#new"
  # get "users/:id", to: "users#show"
  # put "users/:id", to: "users#update"
  # patch "users/:id", to: "users#update"
  # get "users/:id/edit", to: "users#edit"
  # delete"users/:id", to:"users#destroy"
#  delete"users/:id", to:"users#destroy", as: "delete_abc"
end
