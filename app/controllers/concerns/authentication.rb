module Authentication
  extend ActiveSupport::Concern

  included do
    private

    def current_user
      @current_user ||= User.find_by(id: session[:user_id]).decorate if session[:user_id].present?
    end

    # Почему @ у current_user

    def user_signed_in?
      current_user.present?
    end

    def sign_in(user)
      session[:user_id] = user.id
    end

    def sign_out
      session.delete :user_id
    end

    def initialize
      super
      @aaa = 10
    end


    helper_method :current_user, :user_signed_in?
  end
end
