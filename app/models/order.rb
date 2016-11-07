class Order < ApplicationRecord
  belongs_to :account
  has_many :items

  def total
    subtotal = 0
    self.items.each do |item|
      subtotal += item.price
    end
    subtotal
  end

  serialize :notification_params, Hash
  def paypal_url(return_path)
    values = {
      business: "merchant@vinylstream.com",
      cmd: "_xclick",
      upload: 1,
      return: "#{Rails.application.secrets.app_host}#{return_path}",
      invoice: id,
      amount: self.total
    }
    "#{Rails.application.secrets.paypal_host}/cgi-bin/webscr?" + values.to_query
  end
end
