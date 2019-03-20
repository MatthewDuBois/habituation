class Habit < ApplicationRecord
  belongs_to :avatar
  has_many :habit_completeds

  enum difficulty: {easy: 0, medium: 1, hard: 2}
end
