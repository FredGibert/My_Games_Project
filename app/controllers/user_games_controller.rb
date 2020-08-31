class UserGamesController < ApplicationController
  def create
    @user_games = UserGame.new(user_games_params)

    if @user_games.save
      redirect_to edit_profile_path(anchor: "games")
    else
      render :new
    end
  end

  private

  def user_games_params
    params.require(:user_game).permit(:user_id, :game_id)
  end
end
