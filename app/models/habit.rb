class Habit < ApplicationRecord
  belongs_to :avatar
  has_many :habit_completed
  
end
