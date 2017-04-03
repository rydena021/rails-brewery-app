Rails.application.routes.draw do
  devise_for :users

  resources :breweries
  root to: 'breweries#index'
end
