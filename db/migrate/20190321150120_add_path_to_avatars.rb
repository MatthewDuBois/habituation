class AddPathToAvatars < ActiveRecord::Migration[5.2]
  def change
    add_column :avatars, :path, :integer
  end
end
