Rails.application.routes.draw do
  devise_for :admins, skip: ['registrations']
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "static_pages#home"

  namespace :admin do
    root to: 'properties#index'
    resources :properties, except: [:index, :edit, :update, :show]
  end

  resources :properties, only: :show
end
