class Habit < ApplicationRecord
  belongs_to :avatar
  has_many :habit_completeds
  # before_action :authenticate_avatar

  enum difficulty: {easy: 0, medium: 1, hard: 2}
end
