class FriendsController < ApplicationController
  def index
    @friends = Friend.where(
      "user1_id = :current_user_id OR user2_id = :current_user_id", current_user_id: current_user
    ).order(created_at: :desc)
  end

  def create
    @friend = Friend.new(friend_params)
    @friend.user1_id = current_user.id

    if @friend.save
      # if the user is on a profile page, redirect to this profile page
      if params["controller"] == "users" && params["action"] == "show"
        redirect_to user_path(@friend.user2)

      # if user is on the search, redirect to the search itself (not the index)
      else
        redirect_to users_path(anchor: "user")
      end

    else
      render :new
    end
  end

  private

  def friend_params
    params.require(:friend).permit(:user2_id)
  end
end
