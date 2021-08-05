class HikesController < ApplicationController
    
    def show
        @island = Island.find_by_id(params[:island_id])
        @hike = @island.hikes.find_by_id(params[:id])
    end
end
