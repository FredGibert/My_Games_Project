class PagesController < ApplicationController

  def home
    @feed_activities = FeedActivity.where(receiver: current_user)
  end
end
