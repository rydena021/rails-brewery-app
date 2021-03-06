Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"

  devise_for :users

  resources :breweries do
    resources :reviews, only: [:create]
  end
  root to: 'breweries#index'

end
