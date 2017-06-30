class ReviewsController < ApplicationController

  def index
    @product = Product.find(params[:product_id])
    @reviews = Review.all
  end

  def new
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new
  end

  def edit
  end

  def show
    @product = Product.find(params[:product_id])
    @reviews = Review.all
  end

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)
    if @review.save
      redirect_to product_reviews_path(@product)
    else
      render :new
    end
  end



end

private
  def review_params
    params.require(:review).permit(:author, :content_body,  :rating, :product_id)
end
