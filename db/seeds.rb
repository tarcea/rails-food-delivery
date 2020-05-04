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
User.destroy_all
puts 'Start creating users'
User.create!(email: 'unu@me.com', username: 'unu', role: 'delivery', password: '123456')
User.create!(email: 'doi@me.com', username: 'doi', role: 'delivery', password: '123456')
User.create!(email: 'trei@me.com', username: 'trei', role: 'manager', password: '123456')
puts 'DONE, users...'
Order.destroy_all
puts 'Start creating orders'
Order.create!(user: User.first, customer: Customer.first, meal: Meal.first)
Order.create!(user: User.first, customer: Customer.third, meal: Meal.second)
Order.create!(user: User.second, customer: Customer.fifth, meal: Meal.last)
Order.create!(user: User.second, customer: Customer.second, meal: Meal.first)
Order.create!(user: User.third, customer: Customer.last, meal: Meal.third)
puts 'DONE, orders...'
