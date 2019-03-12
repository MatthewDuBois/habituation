class Habit < ApplicationRecord
  belongs_to :avatar
  has_one :habit_completed
  
end
