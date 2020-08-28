Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users

  resource :profile, only: [:edit, :update]

  resources :user_games, only: [:create]

  # index is used only to search new friends to add
  resources :users, only: [:index, :show]

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
