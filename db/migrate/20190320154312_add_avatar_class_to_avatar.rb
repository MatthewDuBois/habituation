class AddAvatarClassToAvatar < ActiveRecord::Migration[5.2]
  def change
    add_column :avatars, :avatar_class, :string, :default => "neophyte"
  end
end
