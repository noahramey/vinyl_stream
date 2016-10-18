class AddOrderIdToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :order_id, :integer
  end
end
