class ApplicationController < ActionController::Base
    include ApplicationHelper

private

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
