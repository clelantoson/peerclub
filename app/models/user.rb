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
  after_create :set_default_avatar

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

    def user_avatar(user_id)

    user = User.find_by(id:user_id)

      if user.avatar.attached?
          image_tag user.avatar
      else
          image_tag 'default_avatar.jpg'
      end
      
    end

    def set_default_avatar 
      unless self.avatar.attached?
        self.avatar.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'default_avatar.png')), filename: 'default_avatar.png', content_type: 'image/png')
      end
    end

end
