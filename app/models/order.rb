class Order < ApplicationRecord
  belongs_to :account
  has_many :items

  def total
    subtotal = 0
    self.items.each do |item|
      subtotal += item.price
    end
    "Order total: $" + subtotal.to_s
  end
end
