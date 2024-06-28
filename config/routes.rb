# config/routes.rb
Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # Health check route
  get "up" => "rails/health#show", as: :rails_health_check

  # Define the root path route ("/")
  root "clinics#index"  # Set this to your desired root path, like "home#index" if you have a HomeController

  # Static Pages
  get 'about', to: 'pages#about'  # Route for the About page

  get '/search', to: 'search#index', as: 'search_index'

  # Resourceful routes for main models
  resources :clinics
  resources :services
  resources :diseases

  # Add more routes as needed
end
