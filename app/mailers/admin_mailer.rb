class AdminMailer < ApplicationMailer
  default from: 'no-reply@peerclub.io'
 
  def create_group_to_admin_email(admin)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @admin = admin 

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'https://www.peerclub.io' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @admin.email, subject: 'A new guy just created a group !') 
  end

  def new_user_register_to_admin_email(admin)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @admin = admin 

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'https://www.peerclub.io' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @admin.email, subject: 'A new guy joined peerclub !') 
  end


  def new_user_subscribe_a_group_to_admin_email(admin)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @admin = admin 

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'https://www.peerclub.io' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @admin.email, subject: 'A new guy just subscribed to a group !') 
  end
  
end