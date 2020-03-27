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

u = Group.create(user: user1,
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

Group.create(user: user1,
title: 'Learn React en esprit',
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
title: 'Javascript ES6 & React in team at La Félicità',
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
title: 'THP Next en groupe de 5 tranquillou',
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
title: "Learn API REST avec Ruby on Rails in group",
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
title: "Go for AWS Certified Solutions Architect :)",
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
title: "Apprendre ruby in goup at La Felicita!",
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
title: "Go for AWS Certified Solutions mates",
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
title: 'Serious group for Google Ads Training 2020',
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
title: "Become RoR developper my friends",
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
title: "Become a AWS Certified Solutions Architect !!",
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
title: "Fun group to learn in spirit AWS",
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
title: "Guide complet React ! Genre THP Next!!",
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
title: "React et Redux par la pratique en groupe de 5",
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
title: "Débutants bienvenue ! React JS !",
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
title: "Become a React Developper !",
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
title: "Complet drawing group to go in Paris",
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
title: "Advanced React team to become an expert !",
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
title: "Launch your first app in React Native",
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
title: "Learn Javascript ES6 in team spirit with Banoffeemisu",
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
title: "Real group to real learn ! Serious exiged",
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
title: "Time to become dev ! Welcome in future",
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
title: "Javascript big group in remote :)",
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
title: "ES6 et ES7 comme des tueurs",
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
title: "AI and machine learning things to do in group",
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
title: "Learn Javascript débarque dans notre Navigateur in group",
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
title: "Become a JS expert with your favorite mate",
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
title: "JS, ES6 ES7 sans complexe mes amis",
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
title: "Learn Deep Learning A-Z™: Hands-On Artificial Neural Networks",
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
title: "Learn Hands Networks in group in Paris",
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
title: "C++ manual to learn in group of 5",
description: Faker::TvShows::DrWho.quote,
udemy_course_title: 'Apprends GRATUITEMENT et FACILEMENT les bases du C++',
udemy_course_id: 2769598,
max_attendees: rand(2..15),
meeting_point: Faker::University.name ,
starting_date: DateTime.now,
remote: true,
work_period: "Journée",
city: Faker::Nation.capital_city,
udemy_url_img: "https://i.udemycdn.com/course/480x270/1087448_5aa9_3.jpg")
puts "Group 8/3 created"

Group.create(user: user8,
title: "Learn Formation C++ : Approfondir vos BASES et devenir AUTONOME",
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
title: "Become a C++ dev ! from 0 to 1.",
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
title: "Sans soucis à Paris ! Nous sommes 5 amis sympa :D",
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
title: "C++ in game learning",
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
title: "Become a PHP dev without complex course",
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
title: "Learn Maîtrisez PHP et devenez autonome en programmation web",
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
title: "Les bases du MVC ! Modele vue controller !",
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
title: "PHP & MySQL with expertise ! Serious Group",
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
title: "Become a DataScientist, the 20th century job",
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
title: "Learn to scrap with Python and APIs",
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
title: "Become a Python dev ! Real case in group",
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
title: "Learn Python from 0 to 1. Become a expert",
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
user7.avatar.attach(io: File.open('app/assets/images/7.jpg'), filename: '7.jpg', content_type: 'image/jpg')
user8.avatar.attach(io: File.open('app/assets/images/8.jpg'), filename: '8.jpg', content_type: 'image/jpg')
user9.avatar.attach(io: File.open('app/assets/images/9.jpg'), filename: '9.jpg', content_type: 'image/jpg')
user10.avatar.attach(io: File.open('app/assets/images/10.jpg'), filename: '10.jpg', content_type: 'image/jpg')


i = 0
y = 0
users = User.all
groups = Group.all
while i < users.length do
  puts "1"
  while y < groups.length do
  puts "2"

    if groups[y].subscriptions.count < groups[y].max_attendees
  puts "3"

      if Subscription.where(user:users[i], group_id:groups[y].id).empty?
  puts "4"

          s = Subscription.new(user:users[i], group_id:groups[y].id)
  puts "5"

        if s.save
          
          puts "Sub OK"
        else
          puts "=============================="
          puts s.errors.full_messages
          puts "=============================="
        end
      end
    end
    y += 1
  end
  y = 0
  i += 1
end
