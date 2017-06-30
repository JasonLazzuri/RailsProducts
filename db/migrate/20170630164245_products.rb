class Products < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :cost
      t.string :country_of_origin

      t.timestamps
    end
  end
end
