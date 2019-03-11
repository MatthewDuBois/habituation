class CreateAvatars < ActiveRecord::Migration[5.2]
  def change
    create_table :avatars do |t|
      t.string :avatar_url
      t.string :name
      t.string :email
      t.string :password_digest
      t.integer :currency_total
      t.integer :level

      t.timestamps
    end
  end
end
