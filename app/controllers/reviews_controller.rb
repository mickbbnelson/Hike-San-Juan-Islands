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
        @review = current_user.reviews.build(review_params)
        if params[:hike_id] 
            @hike = Hike.find_by_id(params[:hike_id])
        end
        if @review.save
            flash[:alert] = "Review has been posted"
            redirect_to hike_reviews_path(@hike)
        else
            render :new
        end
    end

    def edit
        assign_review
        @user = @review.user
        wrong_user_redirect
    end

    def update
        assign_review_and_user
        @review.update(review_params)
        flash[:alert] = "Review has been updated"
        redirect_to user_path(@review.user_id)
    end

    def destroy
        assign_review_and_user
        if @user != current_user
            session.clear
            redirect_to root_path
        else
        @review.destroy
        flash[:alert] = "Review has been deleted"
        redirect_to user_path(@review.user_id)
        end
    end

private

    def review_params
        params.require(:review).permit(:content, :hike_id, :user_id)
    end

    def assign_review
        @review = Review.find_by_id(params[:id])
    end
    
    def assign_review_and_user
        assign_review
        @user = @review.user
    end

    def wrong_user_flash_redirect
        flash[:alert] = "Wrong user!"
        session.clear
        redirect_to root_path
    end

end
