class ChangeAvatarClassFromAvatars < ActiveRecord::Migration[5.2]
  def change
    change_column :avatars, :avatar_class, :string, :default => "Neophyte"
  end
end
