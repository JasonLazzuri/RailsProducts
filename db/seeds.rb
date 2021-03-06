# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all

250.times do
  new_product = Product.create!(name: Faker::Food.ingredient,
                cost: Faker::Number.decimal(2),
                country_of_origin: Faker::Address.country,

  )
  rand(1..10).times do
    new_product.reviews.create!(
    author: Faker::LordOfTheRings.character,
    content_body: Faker::Hipster.words(15),
    rating: Faker::Number.between(1,5),
    product_id: new_product.id,
    )
  end
end

p "Created #{Product.count} products"
