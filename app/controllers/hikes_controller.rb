class HikesController < ApplicationController
    before_action :login_redirect

    def show
        @island = Island.find_by_id(params[:island_id])
        @hike = Hike.find_by_id(params[:id])   
    end
end
