class ReviewsController < ApplicationController
    def index
        if params[:hike_id] && Hike.find_by_id(params[:hike_id])
        @hike = Hike.find_by_id(params[:hike_id])
        @reviews = @hike.reviews
        else
        @reviews = Review.all
        end
    end
    
    def new
        @review = Review.new
    end

    def create

    end

    def show

    end

    def edit

    end

    def update

    end

    def destroy

    end

private

    def review_params
        params.require(:post).permit(:content)
    end
end
