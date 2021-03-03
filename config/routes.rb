Rails.application.routes.draw do
  resources :gifs
  devise_for :users
  resources :users, only: [:index, :show]

  get '*tag', to: 'gifs#random', as: :random_gif

  root to: 'gifs#index'

end
