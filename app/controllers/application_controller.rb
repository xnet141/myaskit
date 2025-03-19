class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern


  include Pagy::Backend
  include ErrorHandling

  private

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id].present?
  end

  # Почему @ у current_user

  def user_signed_in?
    current_user.present?
  end

  def initialize
    super
    @aaa = 10
  end


  helper_method :current_user, :user_signed_in?
end
