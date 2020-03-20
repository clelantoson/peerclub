class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :groups, dependent: :delete_all
  has_many :subscriptions, dependent: :delete_all
  has_many :comments, dependent: :delete_all
  has_one_attached :avatar, dependent: :delete_all
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

end
