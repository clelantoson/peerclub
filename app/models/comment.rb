class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :group
  
  after_create :new_comment_alert_to_grp_users_email

  # ========= START MAILER METHODS ========= 

  # TO USER
  # Alert All Users Of a Specific Group : New comment in discussion
  def new_comment_alert_to_grp_users_email
    UserMailer.new_comment_alert_to_grp_users_email(self).deliver_now
  end

  # ========= END MAILER ========= 

end
