class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  #before_action :authenticate_user!

  before_filter :configure_permitted_parameters, if: :devise_controller?

  def current_controller?(names)
    names.include?(params[:controller]) unless params[:controller].blank? || false
  end

  helper_method :current_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :role
    #devise_parameter_sanitizer.permit(:sign_up) do |user_params|
      #user_params.permit({ role: ['admin','unit_head','teacher'] },:email, :password, :password_confirmation)
    #end

    #devise_parameter_sanitizer.permit(:sign_up) do |user_params|
      #user_params.permit({ role: ['admin','unit_head','teacher'] }, :email, :password, :password_confirmation)
    #end


  end


end
