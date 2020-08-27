class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_games = UserGame.where(user: @user).limit(3)
  end
end
