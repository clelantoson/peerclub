# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
puts "Users destroyed"
Group.destroy_all
puts 'Groups destroyed'

user1 = User.create(
  email: "user@yopmail.com",
  password: "123456",
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name, 
  description: "I'm cute and i know it. I love cakes and carrots", 
  date_of_birth: "1995-03-19", 
  job: "Doc"
)
puts "User 1 created"

User.create(
  email: "user2@yopmail.com",
  password: "123456",
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  description: "Hello, i'm here to learn everything, im very intellectual.", 
  date_of_birth: "1999-04-02", 
  job: "Full nerd"
)
puts "User 2 created"

Group.create(user: user1, title: 'Learn React as YOLO', description: 'Come to our group to learn to master on of the best framework to create the fanciest website !', udemy_course_title: 'React - The Complete Guide (incl Hooks, React Router, Redux)', udemy_course_id: 1362070, max_attendees: 5, meeting_point: "Felicita", remote: false, work_period: "week-end", city: "Paris", udemy_url_img: "https://i.udemycdn.com/course/240x135/1362070_b9a1_2.jpg")
Group.create(user: user2, title: 'Itchy guitar', description: 'Join us, you wont regret it. Learn guitar like a pro in one week only!!', udemy_course_title: 'Débuter la Guitare - Le MEILLEUR cours pour Débutants', udemy_course_id: 406372, max_attendees: 6, meeting_point: "A casa mia", remote: true, work_period: "Soirée", city: "Paris", udemy_url_img: "https://i.udemycdn.com/course/240x135/406372_ecc0_4.jpg")
