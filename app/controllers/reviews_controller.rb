class ReviewsController < ApplicationController
    before_action :login_redirect

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

    def edit
        @review = Review.find_by_id(params[:id])
        wrong_user_redirect
    end

    def update
        @review = Review.find_by_id(params[:id])
        wrong_user_redirect
        @review.update(review_params)
        redirect_to user_path(@review.user_id)
    end

    def destroy
        @review = Review.find_by_id(params[:id])
        wrong_user_redirect
        @review.destroy
        redirect_to user_path(@review.user_id)
    end

private

    def review_params
        params.require(:review).permit(:content, :hike_id, :user_id)
    end

    def wrong_user_redirect
        if @review.user_id != current_user.id
            session.clear
            redirect_to root_path
        end
    end
end
