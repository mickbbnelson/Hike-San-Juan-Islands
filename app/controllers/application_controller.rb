class ApplicationController < ActionController::Base
    #include ApplicationHelper
    helper_method :current_user, :logged_in?

private
def current_user
    @current_user ||= User.find_by_id(session[:user_id])
end

def logged_in?
    current_user
end

    def login_redirect
        if !logged_in?
            redirect_to root_path
        end
    end

    def wrong_user_redirect
        if @user.id != current_user.id
            session.clear
            redirect_to root_path
        end
    end
end
