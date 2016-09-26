class EditItemsTable < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :account_id, :integer
  end
end
