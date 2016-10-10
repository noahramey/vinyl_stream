class AddCartIdToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :cart_id, :integer
  end
end
