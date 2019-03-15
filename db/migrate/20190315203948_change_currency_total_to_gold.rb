class ChangeCurrencyTotalToGold < ActiveRecord::Migration[5.2]
  def change
    rename_column :avatars, :currency_total, :gold_total
    add_column :avatars, :xp_total, :integer
  end
end
