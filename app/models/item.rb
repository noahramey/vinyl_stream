class Item < ApplicationRecord
  belongs_to :account
  belongs_to :cart
end
