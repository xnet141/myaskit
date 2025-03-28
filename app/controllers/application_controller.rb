class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern


  include Pagy::Backend
  include ErrorHandling
  include Authentication
end

def set_t1(user)
  @t = user.t1
end
