class CreateCarts < ActiveRecord::Migration[5.0]
  def change
    create_table :carts do |t|
      t.decimal :total, precision: 12, scale: 3
      t.integer :account_id
      t.timestamps
    end
  end
end
