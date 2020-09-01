class UserGamesController < ApplicationController
  def create
    @user_games = UserGame.new(user_games_params)

    if @user_games.save
      post_new_usergame_to_friends_feed
      redirect_to edit_profile_path(anchor: "games")
    else
      render :new
    end
  end

  private

  def user_games_params
    params.require(:user_game).permit(:user_id, :game_id)
  end

  def post_new_usergame_to_friends_feed
    # Creation Feeds activities
    @all_friends = current_user.friends
    @all_friends.each do |friend|
      receiver = friend.friend_of(current_user)
      FeedActivity.create(content: @user_games, author: current_user, receiver: receiver)
    end
  end
end
