class HabitCompleted < ApplicationRecord
  belongs_to :habit


  def friendly_created_at
    created_at.strftime("%b %e, %l:%M %p")

  end
end

