class ApplicationController < ActionController::Base
    helper_method :current_user, :logged_in?
    before_action :require_login

    def current_user
        @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end

    def logged_in?
        !!current_user
    end

    private

    def require_login
        unless logged_in?
            flash[:error] = "You must be logged in to access this page."
            redirect_to :root
        end
    end

end
