require 'rails_helper'

describe "deletes a product" do
  it "deletes a product" do
    product = Product.create(:name => 'Pizza', :cost => '10.99', :country_of_origin => 'USA')
    visit product_path(product)
    click_on 'Delete'
    expect(page).to have_content 'Look at our Wonderful Products'
  end
end
