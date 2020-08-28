class PagesController < ApplicationController
  def home
    @feed_activities = current_user.feed_activities
  end
end
