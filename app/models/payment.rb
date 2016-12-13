class Payment < ApplicationRecord
  belongs_to :cart
  after_create :closed_cart

  def closed_cart
  	self.cart.close!
  end
end
