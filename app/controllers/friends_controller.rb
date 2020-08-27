class FriendsController < ApplicationController

  def index
    @friends = Friend.where(user1: current_user)
  end
end
