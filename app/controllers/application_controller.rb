class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    dashboard_path
  end

  def link
    token = params[:token]
    @link = HalfwayLink.where(token: token).first
    render '/layouts/link'
  end
end
