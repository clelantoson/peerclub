class Subscription < ApplicationRecord
  belongs_to :user
  belongs_to :group
  

  # after_create :new_user_subscribe_a_group_to_admin_email
  after_create :new_user_subscribe_alert_to_grp_users_email
  after_create :user_subscribe_group_to_user_email

  # ========= START MAILER METHODS ========= 

  # TO ADMIN
  # Alert Admin : A new guy joins a group
  def new_user_subscribe_a_group_to_admin_email
    admin = User.find_by(is_admin?: true)
    AdminMailer.new_user_subscribe_a_group_to_admin_email(admin).deliver_now
  end

  # TO USER
  # Alert All Users Of a Specific Group : A new guy joins the group
  def new_user_subscribe_alert_to_grp_users_email
    group = self.group
    user_who_subscribed = self.user
    UserMailer.new_user_subscribe_alert_to_grp_users_email(group, user_who_subscribed).deliver_now
  end

  # TO USER
  # Thanks user to subscribe to a group
  def user_subscribe_group_to_user_email
    group = self.group
    user_who_subscribed = self.user
    UserMailer.user_subscribe_group_to_user_email(group, user_who_subscribed).deliver_now
  end

  # ========= END MAILER =========

end
