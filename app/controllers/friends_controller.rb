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
      # if user is on the search, redirect to the search itself (not the index)
      if params[:source] == "users-listing"
        @user = @friend.user2
        redirect_to users_path(anchor: "user-#{@user.id}", query: params[:query])
      # if the user is on a profile page, redirect to his profile page
      elsif params[:source] == 'profile-edition'
        redirect_to edit_profile_path(anchor: 'friends')
      else
        redirect_to user_path(@friend.user2)
      end

      # redirect_to users_path(anchor: "user")

    else
      render :new
    end
  end

  private

  def friend_params
    params.require(:friend).permit(:user2_id)
  end
end
