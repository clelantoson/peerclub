class UserMailer < ApplicationMailer
  default from: 'no-reply@peerclub.io'
 
  def new_comment_alert_to_grp_users_email(group, user_who_commented)
    grp_users = group.users    

    @url  = 'https://www.peerclub.io' 

    grp_users.each do |user|
      if user != user_who_commented
        mail(to: user.email, subject: 'A new comment has been sent to your group !') do |format|
          format.html {
            render locals: { first_name: user.first_name, user_who_commented: user_who_commented.first_name }
          }
        end
      end
    end
  end

  def new_user_subscribe_alert_to_grp_users_email(group, user_who_subscribed)
    grp_users = group.users    

    @url  = 'https://www.peerclub.io' 

    grp_users.each do |user|
      if user != user_who_subscribed
        mail(to: user.email, subject: 'A new guy joined your group !') do |format|
          format.html {
            render locals: { first_name: user.first_name, user_who_subscribed: user_who_subscribed.first_name }
          }
        end
      end
    end
  end

  # def user_create_group_to_grp_admin_email(user)
  #   @user = user 

  #   @url  = 'https://www.peerclub.io' 

  #   mail(to: @user.email, subject: 'A new guy just subscribed to your group') 
  # end

  def user_subscribe_group_to_user_email(group, user_who_subscribed)
    
    @url  = 'https://www.peerclub.io' 

    mail(to: user_who_subscribed.email, subject: 'Thanks for subscribing') do |format|
      format.html {
        render locals: { first_name: user_who_subscribed.first_name, group_subscribed: group.title }
      }
    end

  end

  def welcome_to_user_email(user)
   
    @user = user 
    @url  = 'https://www.peerclub.io' 
    mail(to: @user.email, subject: 'Bienvenue chez nous !') 
  end


end