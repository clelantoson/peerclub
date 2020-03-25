class UserMailer < ApplicationMailer
  default from: 'no-reply@peerclub.io'
 
  

  def new_comment_alert_to_grp_users_email(grp_users)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @grp_users = grp_users 

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'https://www.peerclub.io' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    i = 0
    while i < @grp_users.length do 
      mail(to: @grp_users[i].user.email, subject: 'New comment in the group !') 
      i += 1
    end 
  end

  def new_user_subscribe_alert_to_grp_users_email(grp_users)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @grp_users = grp_users 

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'https://www.peerclub.io' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    i = 0
    while i < @grp_users.length do 
      mail(to: @grp_users[i].user.email, subject: 'A new guy joins your group !') 
      i += 1
    end 
  end

  def user_create_group_to_grp_admin_email(user)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @user = user 

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'https://www.peerclub.io' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @user.email, subject: 'A new guy just sub to your group') 
  end

  def user_subscribe_group_to_user_email(user)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @user = user 

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'https://www.peerclub.io' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @user.email, subject: 'Thanks for subscribing') 
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