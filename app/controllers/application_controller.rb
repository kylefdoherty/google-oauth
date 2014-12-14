class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :require_signin!, :current_user, :signed_in?
  private
    def require_signin!
      if current_user.nil?
        flash[:error] = "You must be signed in to access this page"
        redirect_to root_url
      end
    end

    def signed_in?
      !current_user.nil?
    end

    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

end
