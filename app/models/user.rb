class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :groups
  has_many :subscriptions
  has_many :comments
  after_create :welcome_to_user_email
  after_create :new_user_register_to_admin_email

  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :description, presence: true
  # validates :email, presence: true, format: 

  # ========= START MAILER METHODS ========= 

  # TO USER
  # Welcome email
  def welcome_to_user_email
    UserMailer.welcome_to_user_email(self).deliver_now
  end
  
  # TO ADMIN
  # New user subscribe mail
  def new_user_register_to_admin_email
    AdminMailer.new_user_register_to_admin_email(self).deliver_now
  end

  # ========= END MAILER ========= 


# # DANS LE MODEL GROUP
#   after_create :create_group_to_admin_email
#   after_create :user_create_group_to_grp_admin_email
  
#   def create_group_to_admin_email
#     AdminMailer.create_group_to_admin_email(self).deliver_now
#   end

#   def user_create_group_to_grp_admin_email
#     UserMailer.user_create_group_to_grp_admin_email(self).deliver_now
#   end

# # DANS LE MODEL SUBSCRIPTION
#   after_create :new_user_subscribe_a_group_to_admin_email
#   after_create :new_user_subscribe_alert_to_grp_users_email
#   after_create :user_subscribe_group_to_user_email

#   def new_user_subscribe_a_group_to_admin_email
#     AdminMailer.new_user_subscribe_a_group_to_admin_email(self).deliver_now
#   end

#   def new_user_subscribe_alert_to_grp_users_email
#     UserMailer.new_user_subscribe_alert_to_grp_users_email(self).deliver_now
#   end

#   def user_subscribe_group_to_user_email
#     UserMailer.user_subscribe_group_to_user_email(self).deliver_now
#   end

# # DANS LE MODEL COMMENT
#   after_create :new_comment_alert_to_grp_users_email

#   def new_comment_alert_to_grp_users_email
#     UserMailer.new_comment_alert_to_grp_users_email(self).deliver_now
#   end


end
