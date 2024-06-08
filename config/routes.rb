Rails.application.routes.draw do
  resources :profiles
  #devise_for :users
  devise_for :user,
      controllers: {
         omniauth_callbacks: 'users/omniauth_callbacks'
      }
 # get 'home/index'
  get 'home/profile'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "home#index" 
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  resources :priofile, only: [:show]
  # Defines the root path route ("/")
  # root "posts#index"
end