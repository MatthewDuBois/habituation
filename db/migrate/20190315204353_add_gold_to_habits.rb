class AddGoldToHabits < ActiveRecord::Migration[5.2]
  def change
    add_column :habits, :gold, :integer
  end
end
