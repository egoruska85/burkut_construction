Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  #get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'home#index'

  resources :projects
  # Defines the root path route ("/")
  # root "articles#index"
end
