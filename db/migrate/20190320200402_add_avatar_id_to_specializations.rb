class AddAvatarIdToSpecializations < ActiveRecord::Migration[5.2]
  def change
    add_column :specializations, :avatar_id, :integer
  end
end
