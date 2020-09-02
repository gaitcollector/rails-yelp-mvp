# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# db/seeds.rb
# require 'faker'
puts "Cleaning database"

Restaurant.destroy_all


puts "Creating restaurants..."

5.times do
    restaurant = Restaurant.new(
        name: Faker::Restaurant.name,
        address: Faker::Address.city,
        phone_number: Faker::Number.number(digits: 10),
        category: ["chinese", "italian", "japanese", "french", "belgian"].sample
    )
    restaurant.save!
end

puts "Created #{Restaurant.count} restaurant(s)"
