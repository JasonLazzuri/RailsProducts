class UpdateReviewsColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :product_id, :int
  end
end
