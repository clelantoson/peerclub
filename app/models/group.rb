class Group < ApplicationRecord
  belongs_to :user
  has_many :subscriptions, dependent: :delete_all
  has_many :users, through: :subscriptions
  has_many :comments, dependent: :delete_all
  # after_create :create_group_to_admin_email
  # after_create :user_create_group_to_grp_admin_email
  geocoded_by :city, latitude: :latitude, longitude: :longitude
  after_validation :geocode, if: ->(obj){ obj.city.present? and obj.city_changed? }

  validates :max_attendees, presence: true
  validates :title, presence: true, length: { in: 2..130 }
  validates :meeting_point, presence: true
  validates :city, presence: true
  validates :description, presence: true, length: { in: 6..500 }
  validates :starting_date, presence: true
  validates :work_period, presence: true


  # ========= START MAILER METHODS ========= 

  # TO ADMIN
  # Alert Admin : Group is created by someone
  def create_group_to_admin_email
    # admin = User.find_by(is_admin?: true)
    # AdminMailer.create_group_to_admin_email(admin).deliver_now
  end
  
  # TO USER
  # Thanks creator a the new group
  # def user_create_group_to_grp_admin_email(group)
    # group = params[:id]
    # grp_admin = group.user
    # UserMailer.user_create_group_to_grp_admin_email(grp_admin).deliver_now
  # end

  # ========= END MAILER ========= 
  def self.search(search_query, city_query) 
    if city_query.present?
      groups_found = Group.near(city_query)
    else
     groups_found = Group.all
    end
    if search_query.present?
      groups_found = groups_found.select {|group| group["udemy_course_title"].downcase.include?(search_query.downcase) }
    end
    groups_found
  end

  def self.search_tab(tab) 
    groups_tab = Group.all
    groups_tab = groups_tab.select {|group| group["udemy_course_title"].downcase.include?(tab.downcase) }
    groups_tab
  end
  
end
