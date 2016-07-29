class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  #before_action :authenticate_user!
  def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || welcome_index_path || root_path
  end

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) do |user_params|
      user_params.permit(:firstname,:lastname,:age,:dob,:gender,:country,:image,:email,:password,:password_confirmation)
    end
  end
end