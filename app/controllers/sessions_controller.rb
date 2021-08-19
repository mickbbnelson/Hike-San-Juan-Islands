class SessionsController < ApplicationController
    def new
    end

    def create 
        user = User.find_by_email_address(params[:user][:email_address])
        if user && user.authenticate(params[:user][:password])
            session[:user_id] = user.id
            flash[:alert] = "Welcome #{user.name}"
            redirect_to islands_path
        else
            flash[:alert] = "Incorect email address or password"
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
        flash[:alert] = "Welcome #{@user.name}"
        redirect_to islands_path
        else
        redirect_to root_path
        end
    end

    def destroy
        session.delete(:user_id)
        flash[:alert] = "There are no shortcuts to any place worth going.  Come back soon!"
        redirect_to root_path
    end

private

    def auth
        request.env['omniauth.auth']
    end
end