require 'rails_helper'

describe "adds a review" do
  it "adds a review" do
    product = Product.create(:name => 'Pizza', :cost => '10.99', :country_of_origin => 'USA')
    visit product_reviews_path(product)
    click_on 'New Review'
    fill_in 'Author', :with => 'Name'
    fill_in 'Content body', :with =>"Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    fill_in 'Rating', :with => 4
    click_on 'Create Review'
    expect(page).to have_content 'Name'
  end
end
