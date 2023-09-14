require 'sidekiq/web'


Rails.application.routes.draw do
  resources :tasks
  devise_for :users, :controllers => { registrations: 'users/registrations' }
  # devise_for :users
  mount Sidekiq::Web => '/sidekiq'

  resources :calender
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "calender#index"
end
