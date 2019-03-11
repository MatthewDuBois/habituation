class CreatePurchasedLoots < ActiveRecord::Migration[5.2]
  def change
    create_table :purchased_loots do |t|

      t.timestamps
    end
  end
end
