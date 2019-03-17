class AddCompletedToHabits < ActiveRecord::Migration[5.2]
  def change
    add_column :habits, :completed, :boolean
  end
end
