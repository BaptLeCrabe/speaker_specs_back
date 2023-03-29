Rails.application.routes.draw do
  resources :thiele_smalls
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :brands, only: [:index, :show]
  resources :drivers, only: [:index, :show]
  resources :conceptors, only: [:index, :show]
  resources :speakers, only: [:index, :show]
  resources :acoustic_loads, only: [:index, :show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
