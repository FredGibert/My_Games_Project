class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :photo, :bio])
    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end

  def current_user_first_3_friends
    @current_user_first_3_friends ||= Friend.where(
      "user1_id = :current_user_id OR user2_id = :current_user_id", current_user_id: current_user
    ).limit(3).order(created_at: :desc)
  end

  def pending_event_invitations
    @pending_event_invitations ||= Participation.where(status: 'pending', user: current_user).includes(:event)
  end

  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end

  helper_method :current_user_first_3_friends
  helper_method :pending_event_invitations

end
