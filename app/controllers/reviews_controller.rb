class ReviewsController < ApplicationController

  before_action :set_review, only: [:show, :edit, :update, :destroy]

  def index
    @reviews = Review.all
    # json_response(@reviews)
  end

  def show
    @review = Review.find(params[:id])
    # json_response(@review)
  end

  def create
    @review = Review.create!(review_params)
    if @review
      flash[:pink] = "Thank you. We have saved your review and will be published once approved"
      redirect_to root_path
    else
      render :new
    end
  end

  def edit

  end

  def update
    @review.update(review_params)
    head :no_content
  end

  def new
    @review = Review.new
  end

  def destroy
    @review.destroy
    head :no_content
  end

  private
  
  def review_params
    params.require(:review).permit(:title, :body, :name, :email, :star)
  end

  def set_review
    @review = Review.find(params[:id])
  end
end
