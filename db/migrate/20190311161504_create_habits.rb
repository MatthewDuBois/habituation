class CreateHabits < ActiveRecord::Migration[5.2]
  def change
    create_table :habits do |t|
      t.string :name
      t.string :description
      t.boolean :active
      t.integer :points
      t.integer :routine_time_increment
      t.integer :routine_time_quantity

      t.timestamps
    end
  end
end
