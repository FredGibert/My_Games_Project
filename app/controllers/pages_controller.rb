class PagesController < ApplicationController
  def home
    # todo : all feed_activities from friends
    @feed_activities = current_user.feed_activities
  end
end
