class Item < ApplicationRecord
  belongs_to :account
  belongs_to :cart
  belongs_to :order
end
