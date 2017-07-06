class ProductsController < ApplicationController
  def index
    @products = Product.all
    @reviews = Review.all
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def show
    @product = Product.find(params[:id])
  end

  def update
   @product = Product.find(params[:id])
   if @product.update(product_params)
     redirect_to  products_path, notice: 'Product successfully updated!'
   else
     render :edit
   end
 end

 def destroy
    @product = Product.find(params[:id])
    @product.reviews.each do |review|
      review.destroy
    end
    @product.destroy
    redirect_to products_path, notice: 'Product successfully deleted!'

  end

  def create
   @product = Product.new(product_params)
     if @product.save
       redirect_to  products_path, notice: 'Product successfully added!'
     else
       render :products
     end
  end


end

private
  def product_params
    params.require(:product).permit(:name,:cost,:country_of_origin)
end
