class ReviewsController < ApplicationController
    def index
        if params[:hike_id] && @hike = Hike.find_by_id(params[:hike_id])
        @reviews = @hike.reviews
        @island = @hike.island
        else
        @reviews = Review.all
        end
    end
    
    def new
        if params[:hike_id] && @hike = Hike.find_by_id(params[:hike_id])
            @review = Review.new(hike: @hike)
        else
            @review = Review.new
        end
    end

    def create
        @review = Review.new(review_params)
        if params[:hike_id] 
            @hike = Hike.find_by_id(params[:hike_id])
        end
        if @review.save
            redirect_to hike_reviews_path(@hike)
        else
            render :new
        end
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
        params.require(:review).permit(:content, :hike_id, :user_id)
    end
end
