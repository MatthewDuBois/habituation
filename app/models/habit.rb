class Habit < ApplicationRecord
  belongs_to :avatar
  has_many :habit_completeds

  enum difficulty: {easy: 0, medium: 1, hard: 2}

  attr_accessor :level, :xp, :gold

  def ground_zero
   @level = 1
   @xp = 0
   @gold = 0
  end

  # def deactivate_habit
  #   @active = false
  # end


  
end
