class AddDifficultyToHabits < ActiveRecord::Migration[5.2]
  def change
    add_column :habits, :difficulty, :integer
  end
end
