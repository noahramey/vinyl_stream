class Order < ApplicationRecord
  belongs_to :account
  has_many :items
end
