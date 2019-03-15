class ChangePointsToXp < ActiveRecord::Migration[5.2]
  def change
    rename_column :habits, :points, :xp
  end
end
