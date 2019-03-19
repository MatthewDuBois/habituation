class Avatar < ApplicationRecord
  has_secure_password  validates :email, presence:true, uniqueness:true

  has_many :habits
  has_many :purchased_loots

  attr_accessor :gold_total, :level, :xp_total


end
