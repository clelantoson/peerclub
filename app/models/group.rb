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
  after_initialize :add_default_values 
  scope :find_by_tab, -> (language) {where('lower(udemy_course_title) LIKE ?', "%#{language.downcase}%").order(created_at: :desc)}
  # ========= START MAILER METHODS ========= 

  # TO ADMIN
  # Alert Admin : Group is created by someone
  def create_group_to_admin_email
    admin = User.find_by(is_admin?: true)
    AdminMailer.create_group_to_admin_email(admin).deliver_now
  end
  
  # TO USER
  # Thanks creator a the new group
  def user_create_group_to_grp_admin_email(group)
    group = params[:id]
    grp_admin = group.user
    UserMailer.user_create_group_to_grp_admin_email(grp_admin).deliver_now
  end
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

  private

  def add_default_values
    self.max_attendees ||= rand(2..15)
    self.title ||= "My group to learn #{self.udemy_course_title}"
    self.meeting_point ||= "On the internet"
    self.city ||= "Wherever you want"
    self.description ||= "We will learn #{self.udemy_course_title}"
    self.work_period ||= "All days long"
    self.starting_date ||= DateTime.now
  end
end
