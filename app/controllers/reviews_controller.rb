class ReviewsController < ApplicationController
    def index

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
