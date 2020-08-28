class FriendsController < ApplicationController

  def index
    @friends = Friend.where(
      "user1_id = :current_user_id OR user2_id = :current_user_id", current_user_id: current_user
    ).order(created_at: :desc)
  end
end
