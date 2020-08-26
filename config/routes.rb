Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users

  resource :profile, only: [:edit, :update]

  resources :user_games, only: [:create]

  resources :users, only: [:index, :show]

  resources :friend_requests, only: [:create]

  resources :friends, only: [:index]

  resources :events, only: [:new, :create]

  resources :participations do
    member do
      patch :accept
      patch :decline
    end
  end

end
