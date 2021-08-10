class IslandsController < ApplicationController
    before_action :login_redirect

    def index
        @islands = Island.all
    end

    def show
        @island = Island.find_by_id(params[:id])
    end

end
