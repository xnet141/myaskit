class PagesController < ApplicationController
  def index
     @test = @current_user
  end
end