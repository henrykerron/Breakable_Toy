class ReviewsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    if @review.save
      flash[:notice] = "Review created!"
      redirect_to reviews_path
    else
      render :new
    end
  end

  def review_params
    params.require(:review).permit(:title, :description, :video)
  end
end
