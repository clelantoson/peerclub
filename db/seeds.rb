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
Subscription.destroy_all
puts 'Subs destroyed'

user1 = User.create(
  email: Faker::Internet.email ,
  password: Faker::Number.number(digits: 10),
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name, 
  description: "I'm cute and i know it. I love cakes and carrots", 
  date_of_birth: Faker::Date.birthday(min_age: 18, max_age: 65), 
  job: Faker::Job.title
)

puts "User 1 created"

user2 =User.create(
  email: Faker::Internet.email,
  password: Faker::Number.number(digits: 10),
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  description: "Hello, i'm here to learn everything, im very intellectual.", 
  date_of_birth: Faker::Date.birthday(min_age: 18, max_age: 65), 
  job: Faker::Job.title
)
puts "User 2 created"

user3 =User.create(
  email: Faker::Internet.email,
  password: Faker::Number.number(digits: 10),
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  description: "Hello, i'm here to learn everything, im very intellectual.", 
  date_of_birth: Faker::Date.birthday(min_age: 18, max_age: 65), 
  job: Faker::Job.title
)
puts "User 3 created"


user4 =User.create(
  email: Faker::Internet.email,
  password: Faker::Number.number(digits: 10),
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  description: "Hello, i'm here to learn everything, im very intellectual.", 
  date_of_birth: Faker::Date.birthday(min_age: 18, max_age: 65), 
  job: Faker::Job.title
)
puts "User 4 created"

user5 =User.create(
  email: Faker::Internet.email,
  password: Faker::Number.number(digits: 10),
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  description: "Hello, i'm here to learn everything, im very intellectual.", 
  date_of_birth: Faker::Date.birthday(min_age: 18, max_age: 65), 
  job: Faker::Job.title
)
puts "User 5 created"


user6 =User.create(
  email: Faker::Internet.email,
  password: Faker::Number.number(digits: 10),
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  description: "Hello, i'm here to learn everything, im very intellectual.", 
  date_of_birth: Faker::Date.birthday(min_age: 18, max_age: 65), 
  job: Faker::Job.title
)
puts "User 6 created"




Group.create(user: user1, 
title: 'Learn React as YOLO', 
description: 'Come to our group to learn to master on of the best framework to create the fanciest website !', 
udemy_course_title: 'React - The Complete Guide (incl Hooks, React Router, Redux)', 
udemy_course_id: 1362070,
max_attendees: 10, 
starting_date: Faker::Date.forward(days: 365),
meeting_point: "Felicita", 
remote: Faker::Boolean.boolean,
work_period: "Week-end", 
city: "Paris", 
udemy_url_img: "https://i.udemycdn.com/course/240x135/1362070_b9a1_2.jpg")
puts "Group 1 created"

Group.create(user: user2, 
title: 'Itchy guitar', 
description: 'Join us, you wont regret it. Learn guitar like a pro in one week only!!', 
udemy_course_title: 'Débuter la Guitare - Le MEILLEUR cours pour Débutants', 
udemy_course_id: 406372, 
max_attendees: 50, 
starting_date: Faker::Date.forward(days: 365),
meeting_point: "A casa mia", 
remote: Faker::Boolean.boolean,
work_period: "Soirée",  
city: "Paris", 
udemy_url_img: "https://i.udemycdn.com/course/240x135/406372_ecc0_4.jpg")
puts "Group 2 created"

Group.create(user: user3, 
title: 'Amazon certification remote', 
description: 'Learn together, come, we have cookies', 
udemy_course_title: 'AWS Certified Solutions Architect - Associate 2020', 
udemy_course_id: 362328, 
max_attendees: 15, 
starting_date: Faker::Date.forward(days: 365),
meeting_point: "Home", 
remote: true,
work_period: "Journée",  
city: "Paris", 
udemy_url_img: "https://i.udemycdn.com/course/240x135/362328_91f3_10.jpg")
puts "Group 3 created"


Group.create(user: user4, 
title: 'Serious group', 
description: 'Learn how to make money', 
udemy_course_title: 'Ultimate Google Ads Training 2020: Profit with Pay Per Click', 
udemy_course_id: 671544, 
max_attendees: 15, 
starting_date: Faker::Date.forward(days: 365),
meeting_point: "Station F", 
remote: false,
work_period: "Journée",  
city: "Paris", 
udemy_url_img: "https://i.udemycdn.com/course/240x135/671544_9613_5.jpg")
puts "Group 4 created"


Group.create(user: user5, 
title: Faker::TvShows::RuPaul.queen, 
description: Faker::TvShows::DrWho.quote, 
udemy_course_title: 'Character Art School: Complete Character Drawing Course', 
udemy_course_id: 1259404, 
max_attendees: 7, 
meeting_point: Faker::University.name , 
starting_date: Faker::Date.forward(days: 365),
remote: true,
work_period: "Journée",  
city: Faker::Nation.capital_city, 
udemy_url_img: "https://i.udemycdn.com/course/240x135/1259404_72d4_7.jpg")
puts "Group 5 created"



Group.create(user: user6, 
title: Faker::TvShows::RuPaul.queen, 
description: Faker::TvShows::DrWho.quote, 
udemy_course_title: 'Deep Learning A-Z™: Hands-On Artificial Neural Networks', 
udemy_course_id: 1151632, 
max_attendees: 10, 
meeting_point: Faker::University.name , 
starting_date: Faker::Date.forward(days: 365),
remote: true,
work_period: "Journée",  
city: Faker::Nation.capital_city, 
udemy_url_img: "https://i.udemycdn.com/course/240x135/1151632_de9b.jpg")
puts "Group 6 created"

user1.avatar.attach(io: File.open('app/assets/images/1.png'), filename: '1.png', content_type: 'image/png')
user2.avatar.attach(io: File.open('app/assets/images/2.png'), filename: '2.png', content_type: 'image/png')
user3.avatar.attach(io: File.open('app/assets/images/3.png'), filename: '3.png', content_type: 'image/png')
user4.avatar.attach(io: File.open('app/assets/images/4.jpg'), filename: '4.png', content_type: 'image/jpg')
user5.avatar.attach(io: File.open('app/assets/images/5.ĵpg'), filename: '5.png', content_type: 'image/jpg')
user6.avatar.attach(io: File.open('app/assets/images/6.jpg'), filename: '6.png', content_type: 'image/jpg')

i = 0
while i < 6 do
  while y < 6 do
    Subscription.create(user:User.all[i], group_id:Group.all[y])
    y += 1
  end
  i += 1
end
