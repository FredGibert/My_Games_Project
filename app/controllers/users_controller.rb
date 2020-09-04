class UsersController < ApplicationController
  def index
    @users = User.where("id NOT IN (?)", current_user.id)
    @friend = Friend.new

    if params[:query].present?
      first_name, last_name = params[:query].split(" ")
      sql_query = " \
      users.first_name ILIKE :query \
      OR users.last_name ILIKE :query \
      OR users.first_name ILIKE :first_name \
      AND users.last_name ILIKE :last_name \
      "
      # TODO : implement PG Search instead
      @users = @users.where(sql_query, query: "%#{params[:query]}%", first_name: "%#{first_name}%", last_name: "%#{last_name}%")
    end
  end

  def show
    @user = User.find(params[:id])
    @user_games = UserGame.where(user: @user).limit(3)
    @friend = Friend.new
  end

  # ADD USERNAME

  def add_xbox_username
    @user = User.find(params[:id])
    if @user.update(params.require(:user).permit(:xboxlive_username))
      if params[:source] == 'profile-edition'
        redirect_to edit_profile_path(anchor: "accounts-edit")
      else
        redirect_to user_path(current_user, anchor: "xboxlive_username")
      end
    else
      render :new
    end
  end

  def add_steam_username
    @user = User.find(params[:id])
    if @user.update(params.require(:user).permit(:steam_username))
      if params[:source] == 'profile-edition'
        redirect_to edit_profile_path(anchor: "accounts-edit")
      else
        redirect_to user_path(current_user, anchor: "steam_username")
      end
    else
      render :new
    end
  end

  def add_psn_username
    @user = User.find(params[:id])
    if @user.update(params.require(:user).permit(:psn_username))
      if params[:source] == 'profile-edition'
        redirect_to edit_profile_path(anchor: "accounts-edit")
      else
        redirect_to user_path(current_user, anchor: "psn_username")
      end
    else
      render :new
    end
  end
end
