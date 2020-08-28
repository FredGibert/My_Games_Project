class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end

  def current_user_first_3_friends
    if Friend.where(user1: current_user) == []
      @current_user_first_3_friends = Friend.where(user2: current_user).limit(3).order(created_at: :desc)
    else
      @current_user_first_3_friends ||= Friend.where(user1: current_user).limit(3).order(created_at: :desc)
    end
  end

  def pending_event_invitations
    @pending_event_invitations ||= Participation.where(status: 'pending', user: current_user).includes(:event)
  end

  helper_method :current_user_first_3_friends
  helper_method :pending_event_invitations
end
