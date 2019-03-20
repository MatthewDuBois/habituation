class CreateSpecializations < ActiveRecord::Migration[5.2]
  def change
    create_table :specializations do |t|
      t.string :name
      t.text :description
      t.integer :code

      t.timestamps
    end
  end
end
