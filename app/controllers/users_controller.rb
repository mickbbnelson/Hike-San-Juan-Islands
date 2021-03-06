class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to islands_path
        else
            render :new
        end
    end

    def show
        login_redirect
        @user = User.find_by_id(params[:id])
        wrong_user_redirect
    end

private

    def user_params
        params.require(:user).permit(:name, :email_address, :password)
    end
end
