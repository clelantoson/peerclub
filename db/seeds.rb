# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
puts "Users destroy"

User.create(
  email: "user@yopmail.com",
  password: "123456",
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name
)
puts "User 1"

User.create(
  email: "user2@yopmail.com",
  password: "123456",
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name
)
puts "User 2"
#admin
User.create(
  email: "useradmin@yopmail.com",
  password: "123456",
  first_name: "AD",
  last_name: "MIN",
  is_admin: true
)
puts "ADMIN created"
