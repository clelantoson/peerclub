class Group < ApplicationRecord
  belongs_to :user
  has_many :subscriptions
  has_many :users, through: :subscriptions
  has_many :comments
  
end
