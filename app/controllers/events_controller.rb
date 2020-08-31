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
    if @event.save
      redirect_to post_path(@event)
    else
      render :new
    end
  end

  private

  def event_params
    params.require(:event).permit(:description)
  end
end
