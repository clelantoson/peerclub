class AdminMailer < ApplicationMailer
  default from: 'no-reply@monsite.fr'
 
  def create_group_to_admin_email(admin)
    # #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    # @user = user 

    # #on définit une variable @url qu'on utilisera dans la view d’e-mail
    # @url  = 'http://monsite.fr/login' 

    # # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    # mail(to: @user.email, subject: 'Bienvenue chez nous !') 
  end

  def new_user_register_to_admin_email(admin)

  end


  def new_user_subscribe_a_group_to_admin_email(admin)


  end
  
end