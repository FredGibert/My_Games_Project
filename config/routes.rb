Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users

  resource :profile, only: [:edit, :update]

  resources :user_games, only: [:create]

  # index is used only to search new friends to add
  resources :users, only: [:index, :show] do
    member do
      patch :add_xbox_username
      patch :add_steam_username
      patch :add_psn_username
    end
  end

  resources :friends, only: [:index, :create]

  # participations creation embedded in event creation
  resources :events, only: [:index, :new, :create]

  resources :participations, only: [] do
    member do
      patch :accept
      patch :decline
    end
  end
end
