class AddPointsToAvatars < ActiveRecord::Migration[5.2]
  def change
    add_column :avatars, :points, :integer, :default => 0 
  end
end
