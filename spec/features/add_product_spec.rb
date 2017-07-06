require 'rails_helper'

describe 'add a product' do
  it "adds a product" do
    visit "/"
    click_on 'New Product'
    fill_in 'Name', :with => 'Product 1'
    fill_in 'Cost', :with => '10.99'
    fill_in 'Country of origin', :with => 'USA'

    click_on 'Create Product'
    expect(page).to have_content 'Product 1'
    end
  end


  # day = Day.create(:name => "Name1", :day => "Monday", :body => "body", :page => "1", :week_id => week.id)
