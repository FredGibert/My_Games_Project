class EventsController < ApplicationController
  def new
    @user_games = UserGame.includes(:game).where(user: current_user).limit(3)
    @event = Event.new
  end

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
