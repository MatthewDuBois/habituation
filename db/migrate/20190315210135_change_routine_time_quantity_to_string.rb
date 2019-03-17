class ChangeRoutineTimeQuantityToString < ActiveRecord::Migration[5.2]
  def change
    change_column :habits, :routine_time_quantity, :string
  end
end
