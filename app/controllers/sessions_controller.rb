class SessionsController < ApplicationController
    def new
    end

    def create 
        user = User.find_by_email_address(params[:user][:email_address])
        if user && user.authenticate(params[:user][:password])
            session[:user_id] = user.id
            redirect_to user_path(user)
        else
            redirect_to login_path
        end
    end

    def destroy
        session.clear
        redirect_to login_path
    end
end