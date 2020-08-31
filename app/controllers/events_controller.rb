class EventsController < ApplicationController
  def index
    # creator of the event OR participant with status accepted
    sql_query = <<~SQL
      (participations.user_id = :current_user_id AND participations.status = 'accepted')
      OR
      events.user_id = :current_user_id
    SQL

    @events = Event.joins(:participations).where(sql_query, current_user_id: current_user.id).order(:start_at)
  end

  def new
    @user_games = UserGame.includes(:game).where(user: current_user).limit(3)
    @event = Event.new
  end

  # TODO : when a event is created => create a Feed Activity for all current_user.friends (see readme)

  def create
    @event = Event.new(event_params)
    @event.user_id = current_user.id

    if @event.save
      invite_participants_to_new_event
      post_new_event_to_friends_feed

      redirect_to events_path
    else
      @user_games = UserGame.includes(:game).where(user: current_user).limit(3)
      render :new
    end
  end

  private

  def event_params
    params.require(:event).permit(:description, :game_id, :start_at, :end_at)
  end

  def post_new_event_to_friends_feed
    # Creation Feeds activities
    @all_friends = current_user.friends
    @all_friends.each do |friend|
      receiver = friend.friend_of(current_user)
      FeedActivity.create(content: @event, author: current_user, receiver: receiver)
    end
  end

  def invite_participants_to_new_event
    params[:participant_ids].each { |participant_id| @event.participations.create(user_id: participant_id) }
  end
end
