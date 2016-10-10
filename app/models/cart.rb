class Cart < ApplicationRecord
  belongs_to :account
  has_many :items
  before_save :update_total
  validates_presence_of :account_id

  def total
    subtotal = 0
    self.items.each do |item|
      subtotal += item.price
    end
  end

private
  def update_total
    self[:total] = total
  end
end
