class SessionsController < ApplicationController
  def new
    redirect_to "/auth/google_oauth2"
  end

  def create
    binding.pry
  end

  def destroy
    reset_session
    redirect_to root_path
  end
end

