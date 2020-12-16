class WelcomeController < ApplicationController
  def index
    render json: "Welcome to the Pies API. The current time is #{ Time.now }."
  end

end
