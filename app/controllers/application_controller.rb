class ApplicationController < ActionController::API

  include Pundit

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name username email password password_confirmation])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[name])
  end

end
