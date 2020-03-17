class UserMailer < ApplicationMailer
  default from: 'no-reply@peerclub.io'
 
  

  def new_comment_alert_to_grp_users_email(user)

  end

  def new_user_subscribe_alert_to_grp_users_email(user)

  end

  def user_create_group_to_grp_admin_email(user)

  end

  def user_subscribe_group_to_user_email(user)

  end

  def welcome_to_user_email(user)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @user = user 

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'https://www.peerclub.io' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @user.email, subject: 'Bienvenue chez nous !') 
  end


end