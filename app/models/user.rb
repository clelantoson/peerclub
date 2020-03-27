class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  devise :omniauthable, :omniauth_providers => [:facebook]

  has_many :groups, dependent: :delete_all
  has_many :subscriptions, dependent: :delete_all
  has_many :comments, dependent: :delete_all
  has_one_attached :avatar, dependent: :delete_all
  after_create :welcome_to_user_email
  after_create :new_user_register_to_admin_email
  after_create :set_default_avatar

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :description, presence: true, length: { maximum: 500 }
  validates :email, presence: true, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "email adress please" }

def self.new_with_session(params, session)
  super.tap do |user|
    if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
      user.email = data["email"] if user.email.blank?
    end
  end
end

def self.from_omniauth(auth)
  where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
    user.email = auth.info.email
    user.password = Devise.friendly_token[6,20]
    user.first_name = auth.info.name   # assuming the user model has a name
    #user.image = auth.info.image # assuming the user model has an image
  end
end


  # ========= START MAILER METHODS =========

  # TO USER
  # Welcome email
  def welcome_to_user_email
    UserMailer.welcome_to_user_email(self).deliver_now
  end

  # TO ADMIN
  # New user subscribe mail
  def new_user_register_to_admin_email
    admin = User.find_by(is_admin?: true)
    AdminMailer.new_user_register_to_admin_email(admin).deliver_now
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
