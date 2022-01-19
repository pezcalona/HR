Rails.application.routes.draw do
  resources :employees
  resources :businesses
  resources :roles
  resources :positions
  resources :addresses
  resources :cities
  resources :regions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
