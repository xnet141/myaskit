# frozen_string_literal: true

class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  include Pagy::Backend
  include ErrorHandling
  include Authentication
end

# def setT1(user)
#   @t1 = user.t
# end
