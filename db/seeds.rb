# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
puts "delete the database"
puts "****************************"
Restaurant.destroy_all
category_resto = ["chinese", "italian", "japanese", "french", "belgian"]

10.times do
  restaurant = Restaurant.new(
    name: Faker::Food.dish,
    address: Faker::Address.city,
    phone_number: "01 43 54 23 31",
    category: category_resto.sample
  )
  restaurant.save
  puts "created #{restaurant.name}"
end

puts "****************************"
puts "seed finished"
