require 'google'

class WelcomeController < ApplicationController

  include Google
  
  def index
  end

  def search
    response = getLocation(params[:location])
  end

end
