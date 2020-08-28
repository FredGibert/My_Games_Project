class EventsController < ApplicationController
  def index
    # TODO : all events coming whether the user is the creator or the participants
    @events = Event.all
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
