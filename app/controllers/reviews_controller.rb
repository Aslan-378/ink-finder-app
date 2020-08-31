class ReviewsController < ApplicationController
   def new
        @review = Review.new
    end

    def create
        @request = Request.find(params[:request_id])
        @review = Review.new(review_params)
        @review.request = @request
        if @review.save
            redirect_to request_path(@request)
        else
            render 'request/show'
        end
    end

    def index
      @reviews = policy_scope(Review)
    end

    private

    def review_params
        params.require(:review).permit(:name, :content, :rating, :request_id)
    end

end
