class WelcomeController < ApplicationController
    def home
        if current_user
            session.clear
            redirect_to root_path
        end 
    end
end