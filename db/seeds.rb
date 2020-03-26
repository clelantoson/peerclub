# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Subscription.destroy_all
puts 'Subs destroyed'
Group.destroy_all
puts 'Groups destroyed'
User.destroy_all
puts "Users destroyed"

## USERS START ##
user1 = User.create(
  email: "gt.thibaut+test@gmail.com",
  password: "123456",
  first_name: "Thibaut",
  last_name: "Gallice",
  description: "I'm cute and i know it. I love cakes and carrots",
  date_of_birth: Faker::Date.birthday(min_age: 30, max_age: 30),
  job: "CEO at Peerclub"
)

puts "User 1 created"

user2 = User.create(
  email: Faker::Internet.email,
  password: Faker::Number.number(digits: 10),
  first_name: "Enzo",
  last_name: "La Posta",
  description: "Hello, i'm here to learn everything, im very intellectual.",
  date_of_birth: Faker::Date.birthday(min_age: 28, max_age: 28),
  job: "CEO at Peerclub"
)
puts "User 2 created"

user3 = User.create(
  email: Faker::Internet.email,
  password: Faker::Number.number(digits: 10),
  first_name: "Camille",
  last_name: "Le Lan-Toson",
  description: "Hello, i'm here to learn everything, im very intellectual.",
  date_of_birth: Faker::Date.birthday(min_age: 24, max_age: 24),
  job: "CEO at Peerclub"
)
puts "User 3 created"

user4 = User.create(
  email: "user@yopmail.com",
  password: "123456",
  first_name: "Augustin",
  last_name: "Boju",
  description: "Hello, i'm here to learn everything, im very intellectual.",
  date_of_birth: Faker::Date.birthday(min_age: 18, max_age: 65),
  job: Faker::Job.title
)
puts "User 4 created"

user5 = User.create(
  email: Faker::Internet.email,
  password: Faker::Number.number(digits: 10),
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  description: "Hello, i'm here to learn everything, im very intellectual.",
  date_of_birth: Faker::Date.birthday(min_age: 18, max_age: 65),
  job: Faker::Job.title
)
puts "User 5 created"


user6 = User.create(
  email: Faker::Internet.email,
  password: Faker::Number.number(digits: 10),
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  description: "Hello, i'm here to learn everything, im very intellectual.",
  date_of_birth: Faker::Date.birthday(min_age: 18, max_age: 65),
  job: Faker::Job.title
)
puts "User 6 created"

user7 = User.create(
  email: Faker::Internet.email,
  password: Faker::Number.number(digits: 10),
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  description: "Hello, i'm here to learn everything, im very intellectual.",
  date_of_birth: Faker::Date.birthday(min_age: 18, max_age: 65),
  job: Faker::Job.title
)
puts "User 7 created"

user8 = User.create(
  email: Faker::Internet.email,
  password: Faker::Number.number(digits: 10),
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  description: "Hello, i'm here to learn everything, im very intellectual.",
  date_of_birth: Faker::Date.birthday(min_age: 18, max_age: 65),
  job: Faker::Job.title
)
puts "User 8 created"

user9 = User.create(
  email: Faker::Internet.email,
  password: Faker::Number.number(digits: 10),
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  description: "Hello, i'm here to learn everything, im very intellectual.",
  date_of_birth: Faker::Date.birthday(min_age: 18, max_age: 65),
  job: Faker::Job.title
)
puts "User 9 created"


user10 = User.create(
  email: Faker::Internet.email,
  password: Faker::Number.number(digits: 10),
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  description: "Hello, i'm here to learn everything, im very intellectual.",
  date_of_birth: Faker::Date.birthday(min_age: 18, max_age: 65),
  job: Faker::Job.title
)
puts "User 10 created"
## USERS END ##

#============================================#
## GROUPS START ##

u = Group.new(user: user1,
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
puts "Group 1/1 created"

unless u.save
  puts "======================================"
  puts "======================================"
  puts "======================================"
  puts u.errors.full_messages
  puts "======================================"
  puts "======================================"
  puts "======================================"

end

z = Group.new(user: user1,
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
udemy_url_img: "https://i.udemycdn.com/course/480x270/1611166_acf3_3.jpg")
puts "Group 1/2 created"

unless z.save
  puts "======================================"
  puts "======================================"
  puts "======================================"
  puts z.errors.full_messages
  puts "======================================"
  puts "======================================"
  puts "======================================"

end

Group.create(user: user1,
title: 'Learn React',
description: 'Come to our group to learn to master on of the best framework to create the fanciest website !',
udemy_course_title: 'The Complete Guide (incl Hooks, React Router, Redux)',
udemy_course_id: 1362070,
max_attendees: 10,
starting_date: Faker::Date.forward(days: 365),
meeting_point: "Felicita",
remote: Faker::Boolean.boolean,
work_period: "Week-end",
city: "Paris",
udemy_url_img: "https://i.udemycdn.com/course/480x270/917856_5595_2.jpg")
puts "Group 1/3 created"

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
udemy_url_img: "https://i.udemycdn.com/course/480x270/567828_67d0.jpg")
puts "Group 1/4 created"

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
udemy_url_img: "https://i.udemycdn.com/course/480x270/805992_d306_8.jpg")
puts "Group 1/5 created"


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
puts "Group 2/1 created"

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
udemy_url_img: "https://i.udemycdn.com/course/480x270/533682_c10c_4.jpg")
puts "Group 2/2 created"

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
udemy_url_img: "https://i.udemycdn.com/course/480x270/1393796_a0f3_9.jpg")
puts "Group 2/3 created"

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
udemy_url_img: "https://i.udemycdn.com/course/480x270/1356742_c0b1_3.jpg")
puts "Group 2/4 created"

Group.create(user: user2,
title: 'Itchy guitar',
description: 'Join us, you wont regret it. Learn guitar like a pro in one week only!!',
udemy_course_title: 'Débuter la Guitare - Le MEILLEUR cours pour Débutants',
udemy_course_id: 815720,
max_attendees: 50,
starting_date: Faker::Date.forward(days: 365),
meeting_point: "A casa mia",
remote: Faker::Boolean.boolean,
work_period: "Soirée",
city: "Paris",
udemy_url_img: "https://i.udemycdn.com/course/480x270/1392458_6b0d_6.jpg")
puts "Group 2/5 created"

Group.create(user: user3,
title: 'Amazon certification remote',
description: 'Learn together, come, we have cookies',
udemy_course_title: 'Ruby on Rails : Guide Complet',
udemy_course_id: 1066884,
max_attendees: 15,
starting_date: Faker::Date.forward(days: 365),
meeting_point: "Home",
remote: true,
work_period: "Journée",
city: "Paris",
udemy_url_img: "https://i.udemycdn.com/course/240x135/362328_91f3_10.jpg")
puts "Group 3/1 created"

Group.create(user: user3,
title: Faker::TvShows::RuPaul.queen,
description: Faker::TvShows::DrWho.quote,
udemy_course_title: 'API REST avec Ruby on Rails',
udemy_course_id: 1283922,
max_attendees: rand(2..15),
starting_date: Faker::Date.forward(days: 365),
meeting_point: Faker::University.name,
remote: true,
work_period: "Journée",
city: Faker::Nation.capital_city,
udemy_url_img: "https://i.udemycdn.com/course/480x270/1357214_c4e2_15.jpg")
puts "Group 3/2 created"

Group.create(user: user3,
title: Faker::TvShows::RuPaul.queen,
description: Faker::TvShows::DrWho.quote,
udemy_course_title: 'AWS Certified Solutions Architect - Associate 2020',
udemy_course_id: 362328,
max_attendees: rand(2..15),
starting_date: Faker::Date.forward(days: 365),
meeting_point: Faker::University.name,
remote: true,
work_period: "Journée",
city: Faker::Nation.capital_city,
udemy_url_img: "https://i.udemycdn.com/course/480x270/1203206_c2f1.jpg")
puts "Group 3/3 created"

Group.create(user: user3,
title: Faker::TvShows::RuPaul.queen,
description: Faker::TvShows::DrWho.quote,
udemy_course_title: 'Apprendre ruby',
udemy_course_id: 803924,
max_attendees: rand(2..15),
starting_date: Faker::Date.forward(days: 365),
meeting_point: Faker::University.name,
remote: true,
work_period: "Journée",
city: Faker::Nation.capital_city,
udemy_url_img: "https://i.udemycdn.com/course/480x270/1184692_84bb_2.jpg")
puts "Group 3/4 created"

Group.create(user: user3,
title: Faker::TvShows::RuPaul.queen,
description: Faker::TvShows::DrWho.quote,
udemy_course_title: 'AWS Certified Solutions Architect - Associate 2020',
udemy_course_id: 362328,
max_attendees: rand(2..15),
starting_date: Faker::Date.forward(days: 365),
meeting_point: Faker::University.name,
remote: true,
work_period: "Journée",
city: Faker::Nation.capital_city,
udemy_url_img: "https://i.udemycdn.com/course/480x270/1011114_a6c2.jpg")
puts "Group 3/5 created"


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
puts "Group 4/1 created"

Group.create(user: user4,
title: Faker::TvShows::RuPaul.queen,
description: Faker::TvShows::DrWho.quote,
udemy_course_title: 'The Complete Ruby on Rails Developer Course',
udemy_course_id: 519442,
max_attendees: rand(2..15),
starting_date: Faker::Date.forward(days: 365),
meeting_point: Faker::University.name,
remote: true,
work_period: "Journée",
city: Faker::Nation.capital_city,
udemy_url_img: "https://i.udemycdn.com/course/480x270/1003242_a7c9_7.jpg")
puts "Group 4/2 created"

Group.create(user: user4,
title: Faker::TvShows::RuPaul.queen,
description: Faker::TvShows::DrWho.quote,
udemy_course_title: 'AWS Certified Solutions Architect - Associate 2020',
udemy_course_id: 362328,
max_attendees: rand(2..15),
starting_date: Faker::Date.forward(days: 365),
meeting_point: Faker::University.name,
remote: true,
work_period: "Journée",
city: Faker::Nation.capital_city,
udemy_url_img: "https://i.udemycdn.com/course/480x270/1765870_b543.jpg")
puts "Group 4/3 created"

Group.create(user: user4,
title: Faker::TvShows::RuPaul.queen,
description: Faker::TvShows::DrWho.quote,
udemy_course_title: 'AWS Certified Solutions Architect - Associate 2020',
udemy_course_id: 362328,
max_attendees: rand(2..15),
starting_date: Faker::Date.forward(days: 365),
meeting_point: Faker::University.name,
remote: true,
work_period: "Journée",
city: Faker::Nation.capital_city,
udemy_url_img: "https://i.udemycdn.com/course/480x270/1847900_663e_3.jpg")
puts "Group 4/4 created"

Group.create(user: user4,
title: Faker::TvShows::RuPaul.queen,
description: Faker::TvShows::DrWho.quote,
udemy_course_title: 'React 16+ - Le Guide Complet (+ React Router 4 & Firebase)',
udemy_course_id: 1847900,
max_attendees: rand(2..15),
starting_date: Faker::Date.forward(days: 365),
meeting_point: Faker::University.name,
remote: true,
work_period: "Journée",
city: Faker::Nation.capital_city,
udemy_url_img: "https://i.udemycdn.com/course/480x270/1463052_faa1.jpg")
puts "Group 4/5 created"


Group.create(user: user5,
title: Faker::TvShows::RuPaul.queen,
description: Faker::TvShows::DrWho.quote,
udemy_course_title: 'React et Redux par la pratique',
udemy_course_id: 1207310,
max_attendees: rand(2..15),
meeting_point: Faker::University.name ,
starting_date: Faker::Date.forward(days: 365),
remote: true,
work_period: "Journée",
city: Faker::Nation.capital_city,
udemy_url_img: "https://i.udemycdn.com/course/240x135/1259404_72d4_7.jpg")
puts "Group 5/1 created"

Group.create(user: user5,
title: Faker::TvShows::RuPaul.queen,
description: Faker::TvShows::DrWho.quote,
udemy_course_title: 'React JS + Redux pour débutants',
udemy_course_id: 1143524,
max_attendees: rand(2..15),
meeting_point: Faker::University.name ,
starting_date: Faker::Date.forward(days: 365),
remote: true,
work_period: "Journée",
city: Faker::Nation.capital_city,
udemy_url_img: "https://i.udemycdn.com/course/480x270/859184_d252_3.jpg")
puts "Group 5/2 created"

Group.create(user: user5,
title: Faker::TvShows::RuPaul.queen,
description: Faker::TvShows::DrWho.quote,
udemy_course_title: 'Devenir opérationnel rapidement en React',
udemy_course_id: 2323806,
max_attendees: rand(2..15),
meeting_point: Faker::University.name ,
starting_date: Faker::Date.forward(days: 365),
remote: true,
work_period: "Journée",
city: Faker::Nation.capital_city,
udemy_url_img: "https://i.udemycdn.com/course/480x270/1388618_33a7.jpg")
puts "Group 5/3 created"

Group.create(user: user5,
title: Faker::TvShows::RuPaul.queen,
description: Faker::TvShows::DrWho.quote,
udemy_course_title: 'Character Art School: Complete Character Drawing Course',
udemy_course_id: 1259404,
max_attendees: rand(2..15),
meeting_point: Faker::University.name ,
starting_date: Faker::Date.forward(days: 365),
remote: true,
work_period: "Journée",
city: Faker::Nation.capital_city,
udemy_url_img: "https://i.udemycdn.com/course/480x270/1322112_2e0e_2.jpg")
puts "Group 5/4 created"

Group.create(user: user5,
title: Faker::TvShows::RuPaul.queen,
description: Faker::TvShows::DrWho.quote,
udemy_course_title: 'React v16 + Redux avancé',
udemy_course_id: 1704138,
max_attendees: 7,
meeting_point: Faker::University.name ,
starting_date: Faker::Date.forward(days: 365),
remote: true,
work_period: "Journée",
city: Faker::Nation.capital_city,
udemy_url_img: "https://i.udemycdn.com/course/480x270/1252422_4f23_2.jpg")
puts "Group 5/5 created"


Group.create(user: user6,
title: Faker::TvShows::RuPaul.queen,
description: Faker::TvShows::DrWho.quote,
udemy_course_title: 'React 16: Développer votre première application (Hooks,2020)',
udemy_course_id: 2674162,
max_attendees: 10,
meeting_point: Faker::University.name ,
starting_date: Faker::Date.forward(days: 365),
remote: true,
work_period: "Journée",
city: Faker::Nation.capital_city,
udemy_url_img: "https://i.udemycdn.com/course/240x135/1151632_de9b.jpg")
puts "Group 6/1 created"

Group.create(user: user6,
title: Faker::TvShows::RuPaul.queen,
description: Faker::TvShows::DrWho.quote,
udemy_course_title: 'Apprendre Javascript: Cours Javascript Complet',
udemy_course_id: 1049802,
max_attendees: rand(2..15),
meeting_point: Faker::University.name ,
starting_date: Faker::Date.forward(days: 365),
remote: true,
work_period: "Journée",
city: Faker::Nation.capital_city,
udemy_url_img: "https://i.udemycdn.com/course/480x270/1097486_c3ad.jpg")
puts "Group 6/2 created"

Group.create(user: user6,
title: Faker::TvShows::RuPaul.queen,
description: Faker::TvShows::DrWho.quote,
udemy_course_title: 'VRAIMENT Bien Comprendre Javascript',
udemy_course_id: 1388618,
max_attendees: rand(2..15),
meeting_point: Faker::University.name ,
starting_date: Faker::Date.forward(days: 365),
remote: true,
work_period: "Journée",
city: Faker::Nation.capital_city,
udemy_url_img: "https://i.udemycdn.com/course/480x270/1534272_a52f_4.jpg")
puts "Group 6/3 created"

Group.create(user: user6,
title: Faker::TvShows::RuPaul.queen,
description: Faker::TvShows::DrWho.quote,
udemy_course_title: 'JavaScript ES6',
udemy_course_id: 1945868,
max_attendees: rand(2..15),
meeting_point: Faker::University.name ,
starting_date: Faker::Date.forward(days: 365),
remote: true,
work_period: "Journée",
city: Faker::Nation.capital_city,
udemy_url_img: "https://i.udemycdn.com/course/480x270/1620090_0efb_4.jpg")
puts "Group 6/4 created"

Group.create(user: user6,
title: Faker::TvShows::RuPaul.queen,
description: Faker::TvShows::DrWho.quote,
udemy_course_title: 'JavaScript : la formation ULTIME',
udemy_course_id: 2559100,
max_attendees: 10,
meeting_point: Faker::University.name ,
starting_date: Faker::Date.forward(days: 365),
remote: true,
work_period: "Journée",
city: Faker::Nation.capital_city,
udemy_url_img: "https://i.udemycdn.com/course/480x270/1040216_1381_5.jpg")
puts "Group 6/5 created"


Group.create(user: user7,
title: Faker::TvShows::RuPaul.queen,
description: Faker::TvShows::DrWho.quote,
udemy_course_title: 'Développement Moderne Javascript et ES6,ES7',
udemy_course_id: 1394948,
max_attendees: 10,
meeting_point: Faker::University.name ,
starting_date: Faker::Date.forward(days: 365),
remote: true,
work_period: "Journée",
city: Faker::Nation.capital_city,
udemy_url_img: "https://i.udemycdn.com/course/240x135/1151632_de9b.jpg")
puts "Group 7/1 created"

Group.create(user: user7,
title: Faker::TvShows::RuPaul.queen,
description: Faker::TvShows::DrWho.quote,
udemy_course_title: 'Hands-On Artificial Neural Networks',
udemy_course_id: 1151632,
max_attendees: rand(2..15),
meeting_point: Faker::University.name ,
starting_date: Faker::Date.forward(days: 365),
remote: true,
work_period: "Journée",
city: Faker::Nation.capital_city,
udemy_url_img: "https://i.udemycdn.com/course/480x270/1741204_5c9f_3.jpg")
puts "Group 7/2 created"

Group.create(user: user7,
title: Faker::TvShows::RuPaul.queen,
description: Faker::TvShows::DrWho.quote,
udemy_course_title: 'Javascript débarque dans notre Navigateur',
udemy_course_id: 1454492,
max_attendees: rand(2..15),
meeting_point: Faker::University.name ,
starting_date: Faker::Date.forward(days: 365),
remote: true,
work_period: "Journée",
city: Faker::Nation.capital_city,
udemy_url_img: "https://i.udemycdn.com/course/480x270/1348478_9381_3.jpg")
puts "Group 7/3 created"

Group.create(user: user7,
title: Faker::TvShows::RuPaul.queen,
description: Faker::TvShows::DrWho.quote,
udemy_course_title: 'Apprendre Javascript - Créer un jeu en ligne',
udemy_course_id: 640088,
max_attendees: rand(2..15),
meeting_point: Faker::University.name ,
starting_date: Faker::Date.forward(days: 365),
remote: true,
work_period: "Journée",
city: Faker::Nation.capital_city,
udemy_url_img: "https://i.udemycdn.com/course/480x270/1342580_e500_4.jpg")
puts "Group 7/4 created"

Group.create(user: user7,
title: Faker::TvShows::RuPaul.queen,
description: Faker::TvShows::DrWho.quote,
udemy_course_title: 'JavaScript : le Guide Ultime (ES6 et ES7 inclus)',
udemy_course_id: 1134644,
max_attendees: rand(2..15),
meeting_point: Faker::University.name ,
starting_date: Faker::Date.forward(days: 365),
remote: true,
work_period: "Journée",
city: Faker::Nation.capital_city,
udemy_url_img: "https://i.udemycdn.com/course/480x270/1568426_07cc_2.jpg")
puts "Group 7/5 created"

Group.create(user: user8,
title: Faker::TvShows::RuPaul.queen,
description: Faker::TvShows::DrWho.quote,
udemy_course_title: 'Deep Learning A-Z™: Hands-On Artificial Neural Networks',
udemy_course_id: 671544,
max_attendees: 10,
meeting_point: Faker::University.name ,
starting_date: Faker::Date.forward(days: 365),
remote: true,
work_period: "Journée",
city: Faker::Nation.capital_city,
udemy_url_img: "https://i.udemycdn.com/course/240x135/1151632_de9b.jpg")
puts "Group 8/1 created"

Group.create(user: user8,
title: Faker::TvShows::RuPaul.queen,
description: Faker::TvShows::DrWho.quote,
udemy_course_title: 'Hands Networks',
udemy_course_id: 1151632,
max_attendees: rand(2..15),
meeting_point: Faker::University.name ,
starting_date: Faker::Date.forward(days: 365),
remote: true,
work_period: "Journée",
city: Faker::Nation.capital_city,
udemy_url_img: "https://i.udemycdn.com/course/480x270/1544922_d59e_3.jpg")
puts "Group 8/2 created"

Group.create(user: user8,
title: Faker::TvShows::RuPaul.queen,
description: Faker::TvShows::DrWho.quote,
udemy_course_title: 'Apprends GRATUITEMENT et FACILEMENT les bases du C++',
udemy_course_id: 2769598,
max_attendees: rand(2..15),
meeting_point: Faker::University.name ,
starting_date: Faker::Date.forward(days: 365),
remote: true,
work_period: "Journée",
city: Faker::Nation.capital_city,
udemy_url_img: "https://i.udemycdn.com/course/480x270/1087448_5aa9_3.jpg")
puts "Group 8/3 created"

Group.create(user: user8,
title: Faker::TvShows::RuPaul.queen,
description: Faker::TvShows::DrWho.quote,
udemy_course_title: 'Formation C++ : Approfondir vos BASES et devenir AUTONOME',
udemy_course_id: 2897008,
max_attendees: rand(2..15),
meeting_point: Faker::University.name ,
starting_date: Faker::Date.forward(days: 365),
remote: true,
work_period: "Journée",
city: Faker::Nation.capital_city,
udemy_url_img: "https://i.udemycdn.com/course/480x270/1697894_e247_5.jpg")
puts "Group 8/4 created"

Group.create(user: user8,
title: Faker::TvShows::RuPaul.queen,
description: Faker::TvShows::DrWho.quote,
udemy_course_title: 'C++ : Apprenez les bases rapidement !',
udemy_course_id: 1442118,
max_attendees: rand(2..15),
meeting_point: Faker::University.name ,
starting_date: Faker::Date.forward(days: 365),
remote: true,
work_period: "Journée",
city: Faker::Nation.capital_city,
udemy_url_img: "https://i.udemycdn.com/course/480x270/1576666_d19b_2.jpg")
puts "Group 8/5 created"

Group.create(user: user9,
title: Faker::TvShows::RuPaul.queen,
description: Faker::TvShows::DrWho.quote,
udemy_course_title: 'Débuter en programmation C++',
udemy_course_id: 1253126,
max_attendees: 10,
meeting_point: Faker::University.name ,
starting_date: Faker::Date.forward(days: 365),
remote: true,
work_period: "Journée",
city: Faker::Nation.capital_city,
udemy_url_img: "https://i.udemycdn.com/course/240x135/1151632_de9b.jpg")
puts "Group 9/1 created"

Group.create(user: user9,
title: Faker::TvShows::RuPaul.queen,
description: Faker::TvShows::DrWho.quote,
udemy_course_title: 'Le C++ moderne par le développement de jeux',
udemy_course_id: 1433002,
max_attendees: rand(2..15),
meeting_point: Faker::University.name ,
starting_date: Faker::Date.forward(days: 365),
remote: true,
work_period: "Journée",
city: Faker::Nation.capital_city,
udemy_url_img: "https://i.udemycdn.com/course/480x270/625204_436a_2.jpg")
puts "Group 9/2 created"

Group.create(user: user9,
title: Faker::TvShows::RuPaul.queen,
description: Faker::TvShows::DrWho.quote,
udemy_course_title: 'La formation complète du développeur PHP 7  MySQL 5',
udemy_course_id: 824178,
max_attendees: rand(2..15),
meeting_point: Faker::University.name ,
starting_date: Faker::Date.forward(days: 365),
remote: true,
work_period: "Journée",
city: Faker::Nation.capital_city,
udemy_url_img: "https://i.udemycdn.com/course/480x270/1027180_475e_5.jpg")
puts "Group 9/3 created"

Group.create(user: user9,
title: Faker::TvShows::RuPaul.queen,
description: Faker::TvShows::DrWho.quote,
udemy_course_title: 'Maîtrisez PHP et devenez autonome en programmation web',
udemy_course_id: 2180416,
max_attendees: rand(2..15),
meeting_point: Faker::University.name ,
starting_date: Faker::Date.forward(days: 365),
remote: true,
work_period: "Journée",
city: Faker::Nation.capital_city,
udemy_url_img: "https://i.udemycdn.com/course/480x270/840622_1ff1_2.jpg")
puts "Group 9/4 created"

Group.create(user: user9,
title: Faker::TvShows::RuPaul.queen,
description: Faker::TvShows::DrWho.quote,
udemy_course_title: 'MVC : Créer des sites web PHP performants et organisés !',
udemy_course_id: 1580302,
max_attendees: rand(2..15),
meeting_point: Faker::University.name ,
starting_date: Faker::Date.forward(days: 365),
remote: true,
work_period: "Journée",
city: Faker::Nation.capital_city,
udemy_url_img: "https://i.udemycdn.com/course/480x270/960928_68e4_7.jpg")
puts "Group 9/5 created"

Group.create(user: user10,
title: Faker::TvShows::RuPaul.queen,
description: Faker::TvShows::DrWho.quote,
udemy_course_title: 'PHP et MySQL : la formation ULTIME',
udemy_course_id: 1534272,
max_attendees: rand(2..10),
meeting_point: Faker::University.name ,
starting_date: Faker::Date.forward(days: 365),
remote: true,
work_period: "Journée",
city: Faker::Nation.capital_city,
udemy_url_img: "https://i.udemycdn.com/course/240x135/1151632_de9b.jpg")
puts "Group 10/1 created"

Group.create(user: user10,
title: Faker::TvShows::RuPaul.queen,
description: Faker::TvShows::DrWho.quote,
udemy_course_title: 'Data Science : Analyse de données avec Python',
udemy_course_id: 1620090,
max_attendees: rand(2..10),
meeting_point: Faker::University.name ,
starting_date: Faker::Date.forward(days: 365),
remote: true,
work_period: "Journée",
city: Faker::Nation.capital_city,
udemy_url_img: "https://i.udemycdn.com/course/480x270/1918216_e454_3.jpg")
puts "Group 10/2 created"

Group.create(user: user10,
title: Faker::TvShows::RuPaul.queen,
description: Faker::TvShows::DrWho.quote,
udemy_course_title: 'Web Scraping et APIs Scraping avec Python (Cas réels inclus)',
udemy_course_id: 1302260,
max_attendees: rand(2..10),
meeting_point: Faker::University.name ,
starting_date: Faker::Date.forward(days: 365),
remote: true,
work_period: "Journée",
city: Faker::Nation.capital_city,
udemy_url_img: "https://i.udemycdn.com/course/480x270/640808_ca84_2.jpg")
puts "Group 10/3 created"

Group.create(user: user10,
title: Faker::TvShows::RuPaul.queen,
description: Faker::TvShows::DrWho.quote,
udemy_course_title: 'Python : Formation complète pour débutant (cas réels inclus)',
udemy_course_id: 1180708,
max_attendees: rand(2..10),
meeting_point: Faker::University.name ,
starting_date: Faker::Date.forward(days: 365),
remote: true,
work_period: "Journée",
city: Faker::Nation.capital_city,
udemy_url_img: "https://i.udemycdn.com/course/480x270/1548226_2446_8.jpg")
puts "Group 10/4 created"

Group.create(user: user10,
title: Faker::TvShows::RuPaul.queen,
description: Faker::TvShows::DrWho.quote,
udemy_course_title: 'La Formation Complète Python',
udemy_course_id: 2281794,
max_attendees: rand(2..10),
meeting_point: Faker::University.name ,
starting_date: Faker::Date.forward(days: 365),
remote: true,
work_period: "Journée",
city: Faker::Nation.capital_city,
udemy_url_img: "https://i.udemycdn.com/course/480x270/1180708_2a1b_5.jpg")
puts "Group 10/5 created"


user1.avatar.attach(io: File.open('app/assets/images/1.jpeg'), filename: '1.jpeg', content_type: 'image/jpeg')
user2.avatar.attach(io: File.open('app/assets/images/2.jpeg'), filename: '2.jpeg', content_type: 'image/jpeg')
user3.avatar.attach(io: File.open('app/assets/images/3.png'), filename: '3.png', content_type: 'image/png')
user4.avatar.attach(io: File.open('app/assets/images/4.jpg'), filename: '4.jpg', content_type: 'image/jpg')
user5.avatar.attach(io: File.open('app/assets/images/5.jpg'), filename: '5.jpg', content_type: 'image/jpg')
user6.avatar.attach(io: File.open('app/assets/images/6.jpg'), filename: '6.jpg', content_type: 'image/jpg')

i = 0
y = 0
users = User.all
groups = Group.all
while i < 6 do
  while y < 6 do
    s = Subscription.new(user:users[i], group_id:groups[y].id)
    if s.save
      puts "Sub OK"
    else
      puts "=============================="
      puts s.errors.full_messages
      puts "=============================="
    end
    y += 1
  end
  y = 0
  i += 1
end
