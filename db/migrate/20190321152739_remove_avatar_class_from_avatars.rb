class RemoveAvatarClassFromAvatars < ActiveRecord::Migration[5.2]
  def change
    remove_column :avatars, :avatar_class, :string
    change_column :avatars, :path, :integer, :default => 0
  end
end
