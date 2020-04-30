# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
Meal.destroy_all
puts 'Start creating meals'
25.times do
  meal = Meal.new(name: Faker::Food.dish)
  meal.save!
end
puts 'DONE, meals...'

Customer.destroy_all
puts 'Start creating customers'
25.times do
  customer = Customer.new(
    name: Faker::Name.name,
    address: Faker::Address.full_address,
    phone: Faker::PhoneNumber.cell_phone
  )
  customer.save!
end
puts 'DONE, customers...'
