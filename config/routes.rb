Rails.application.routes.draw do
  resources :payments
  resources :zipcodes
  root 'zipcodes#index'
end
