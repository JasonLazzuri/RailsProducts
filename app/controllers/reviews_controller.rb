class ReviewsController < ApplicationController

  def index
    @product = Product.find(params[:product_id])
    @reviews = Review.all
  end

  def new
  end

  def edit
  end

  def show
    @product = Product.find(params[:product_id])
    @review = Review.all
  end



end

private
  def review_params
    params.require(:review).permit(:author, :content_body,  :rating, :product_id)
end
