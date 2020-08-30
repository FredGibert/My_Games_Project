class FriendsController < ApplicationController
  def index
    @friends = Friend.where(
      "user1_id = :current_user_id OR user2_id = :current_user_id", current_user_id: current_user
    ).order(created_at: :desc)
  end

  def create
    @friend = Friend.new(friend_params)

    if @friend.save
      redirect_to users_path(anchor: "user")
    else
      render :new
    end
  end

  private

  def friend_params
    params.require(:friend).permit(:user1_id, :user2_id)
  end
end
