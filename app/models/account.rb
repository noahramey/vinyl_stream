class Account < ApplicationRecord
  belongs_to :user
  has_many :items

  geocoded_by :address
  after_validation :geocode

  has_attached_file :avatar, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>',
    high: '1000x1000#'
  }
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
