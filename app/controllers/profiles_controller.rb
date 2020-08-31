class ProfilesController < ApplicationController
  def edit
    @games = Game.all
    @user = current_user
    @user_games = UserGame.new
    @users = User.where("id NOT IN (?)", current_user.id)
    @friend = Friend.new
  end

  def update

  end
end
