class IslandsController < ApplicationController

    def index
        @islands = Island.all
    end

    def show
        @island = Island.find_by_id(params[:id])
    end

end
