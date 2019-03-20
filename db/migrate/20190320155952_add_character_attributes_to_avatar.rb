class AddCharacterAttributesToAvatar < ActiveRecord::Migration[5.2]
  def change
    add_column :avatars, :physicality, :integer, :default => 1
    add_column :avatars, :intelligence, :integer, :default => 1
    add_column :avatars, :mindfulness, :integer, :default => 1
    add_column :avatars, :humility, :integer, :default => 1
    add_column :avatars, :intuition, :integer, :default => 1
    add_column :avatars, :zen, :integer, :default => 0 
    add_column :avatars, :knowledge, :integer, :default => 0 
    add_column :avatars, :gratitude, :integer, :default => 0
    add_column :avatars, :vigor, :integer, :default => 0
  end
end
