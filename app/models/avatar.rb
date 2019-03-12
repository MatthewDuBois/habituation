class Avatar < ApplicationRecord
  has_secure_password  validates :email, presence:true, uniqueness:true

  has_many :habits
  has_many :purchased_loots
  has_many :completed_habits, through: :habits 
end
