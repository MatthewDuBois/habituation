class AddDescriptionToLoots < ActiveRecord::Migration[5.2]
  def change
    add_column :loots, :description, :string
  end
end
