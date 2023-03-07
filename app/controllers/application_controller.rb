class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :permit_params, if: :devise_controller?

  private

  def permit_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end

end
