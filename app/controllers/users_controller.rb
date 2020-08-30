class UsersController < ApplicationController
  def index
    @users = User.where("id NOT IN (?)", current_user.id)
    @friend = Friend.new

    if params[:query].present?
      sql_query = " \
      users.first_name ILIKE :query \
      OR users.last_name ILIKE :query \
      "

      @users = @users.where(sql_query, query: "%#{params[:query]}%")
    end
  end

  def show
    @user = User.find(params[:id])
    @user_games = UserGame.where(user: @user).limit(3)
  end

  def add_xbox_username
    @user = User.find(params[:id])
    @user.update_attribute(:xboxlive_username, params.require(:user).permit(:xboxlive_username))
    if @user.save
      redirect_to user_path(current_user, anchor: "xboxlive_username")
    else
      render :new
    end
  end

  def add_steam_username
    @user = User.find(params[:id])
    @user.steam_username = params.require(:user).permit(:steam_username)
    if @user.save
      redirect_to user_path(current_user, anchor: "steam_username")
    else
      render :new
    end
  end

  def add_psn_username
    @user = User.find(params[:id])
    @user.psn_username = params.require(:user).permit(:psn_username)
    if @user.save
      redirect_to user_path(current_user, anchor: "psn_username")
    else
      render :new
    end
  end

end
