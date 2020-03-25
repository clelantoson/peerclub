class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :group
  
  after_create :new_comment_alert_to_grp_users_email

  # ========= START MAILER METHODS ========= 

  # TO USER
  # Alert All Users Of a Specific Group : New comment in discussion
  def new_comment_alert_to_grp_users_email
    grp = Group.where(id: params[:group_id])
    grp_subs = grp.subscriptions
    UserMailer.new_comment_alert_to_grp_users_email(grp_subs).deliver_now
  end

  # ========= END MAILER ========= 

end
