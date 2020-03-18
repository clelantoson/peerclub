class Group < ApplicationRecord
  belongs_to :user
  has_many :subscriptions
  has_many :users, through: :subscriptions
  has_many :comments

  after_create :create_group_to_admin_email
  after_create :user_create_group_to_grp_admin_email

  # ========= START MAILER METHODS ========= 

  # TO ADMIN
  # Alert Admin : Group is created by someone
  def create_group_to_admin_email
    AdminMailer.create_group_to_admin_email(self).deliver_now
  end
  
  # TO USER
  # Thanks creator a the new group
  def user_create_group_to_grp_admin_email
    UserMailer.user_create_group_to_grp_admin_email(self).deliver_now
  end

  # ========= END MAILER ========= 
  
end
