class ChangeColumn < ActiveRecord::Migration[5.2]
  def change
    change_column :avatars, :xp_total, :integer, :default => 0
    change_column :avatars, :level, :integer, :default => 1
    change_column :avatars, :gold_total, :integer, :default => 0
  end
end
