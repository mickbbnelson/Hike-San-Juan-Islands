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

    def omniauth
        @user = User.find_or_create_by(uid: auth['uid']) do |user|
            user.name = auth['info']['name']
            user.email_address = auth['info']['email']
            user.password = SecureRandom.hex(12)
        end
        if @user.valid?
        session[:user_id] = @user.id
        render 'islands/index'
        else
        redirect_to login_path
        end
    end

    def destroy
        session.clear
        redirect_to login_path
    end

private

    def auth
        request.env['omniauth.auth']
    end
end