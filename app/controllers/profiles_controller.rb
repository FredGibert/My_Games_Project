class ProfilesController < ApplicationController
  def edit
    @games = Game.all
    @user = current_user
    @user_games = UserGame.new
    @friend = Friend.new
    @users = User.where("id NOT IN (?)", current_user.id)

    if params[:query].present?
      sql_query = " \
      users.first_name ILIKE :query \
      OR users.last_name ILIKE :query \
      "
      @users = @users.where(sql_query, query: "%#{params[:query]}%")
    end

    if params[:games].present?
      sql_query = " \
      games.name ILIKE :games \
      "
      @games = @games.where(sql_query, games: "%#{params[:games]}%")
    end
  end

  def update

  end
end
