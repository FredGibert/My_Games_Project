class ParticipationsController < ApplicationController
  def accept
    @participation = Participation.find(params[:id])
    @participation.status = "accepted"
    @participation.save!
    # TODO : revoir le path, ideally redirect to current page
    redirect_to events_path(anchor: "participation-#{@participation.id}")
  end

  def decline
    @participation = Participation.find(params[:id])
    @participation.status = "declined"
    @participation.save!
    redirect_to events_path(anchor: "participation-#{@participation.id}")
  end
end
