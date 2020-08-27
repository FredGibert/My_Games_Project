class EventsController < ApplicationController
  def new
    @user_games = UserGame.where(user: @user).limit(3)
  end
end
