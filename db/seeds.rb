# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all

100.times do |index|
  new_product = Product.create!(name: Faker::Food.ingredient,
                cost: Faker::Number.decimal(2),
                country_of_origin: Faker::LordOfTheRings.location,

  )
  rand(1..10).times do |review|
    Review.create!(
    author: Faker::LordOfTheRings.character,
    content_body: Faker::Hipster.paragraph(2, false, 4),
    rating: Faker::Number.between(1,5),
    product_id: new_product.id,
    )
  end
end

p "Created #{Product.count} products"
