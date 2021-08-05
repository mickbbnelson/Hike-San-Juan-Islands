class IslandsController < ApplicationController

    def index
        @islands = Island.all
    end

    def show
        @island = Island.find_by(params[:id])
    end

end
