class ApplicationController < ActionController::Base
    include ApplicationHelper

private

    def not_logged_in_redirect
        if !logged_in
            redirect_to login_path
        end
    end
end
