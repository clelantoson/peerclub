class Group < ApplicationRecord
  belongs_to :user
  has_many :subscriptions, dependent: :delete_all
  has_many :users, through: :subscriptions
  has_many :comments, dependent: :delete_all
  after_create :create_group_to_admin_email
  after_create :user_create_group_to_grp_admin_email

  # validates :max_attendees, presence: true
  # validates :title, presence: true
  # validates :meeting_point, presence: true
  # validates :city, presence: true
  # validates :description, presence: true
  # validates :starting_date, presence: true
  # validates :work_period, presence: true


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
  def self.search(search_query, city_query) 
    groups = Group.all
    group_found = {}
    if search_query.present? 
      groups_found = groups.select {|group| group["udemy_course_title"].downcase.include?(search_query.downcase) }
    end
    if city_query.present?
      groups_found = groups.select {|group| group["city"].downcase.include?(city_query.downcase) }
    end
    groups_found
  end
end
