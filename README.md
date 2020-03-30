## README
Versions : ruby '5.2.1'
rails '~> 5.2.4', '>= 5.2.4.1'

Peerclub is a platform that enables learners from Udemy to find co learners to work on the same lesson. You can join a group or create your own group.

## Needed APIs:

You need theses API's to make the project work : an access to Udemy's API, a Sendgrid account, Amazon S3, and a Facebook Developper account. You can create a .env file, copy these line in it, and complete it with your own keys . 
UDEMY_USER=
UDEMY_PWD=
SENDGRID_LOGIN=
SENDGRID_PWD=
AMAZON_ACCESS_KEY_ID= 
AMAZON_SECRET_ACCESS_KEY= 
FACEBOOK_APP_ID= 
FACEBOOK_APP_SECRET= 

## To launch it locally
- bundle install
- rails db:create
- rails db:migrate
- rails db:seed
