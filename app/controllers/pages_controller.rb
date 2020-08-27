class PagesController < ApplicationController
  def home
    @feed_activities = FeedActivity.all
  end
end
