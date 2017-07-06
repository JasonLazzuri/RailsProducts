require 'rails_helper'

describe "edits a product" do
  it "edits a product" do
    product = Product.create(:name => 'Pizza', :cost => '10.99', :country_of_origin => 'USA')
    visit product_path(product)
    click_on 'Edit'
    fill_in 'Name', :with => 'Calzone'
    click_on 'Update Product'
    expect(page).to have_content 'Calzone'
  end
end
