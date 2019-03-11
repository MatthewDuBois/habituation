class CreateHabitCompleteds < ActiveRecord::Migration[5.2]
  def change
    create_table :habit_completeds do |t|

      t.timestamps
    end
  end
end
