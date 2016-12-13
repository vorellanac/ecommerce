class Cart < ApplicationRecord
  belongs_to :user
  has_many :orders
  has_many :products, through: :orders
  has_one :payment
  before_save :update_amount

  after_save :create_new_cart

  def update_amount
  	self.total = self.products.collect(&:price).sum
  end

  def close!
  	self.state = 'closed'
  	self.save
  end

  def last_cart
    
  end


  def create_new_cart
  	if state == 'closed' 
  		self.user.carts.build(state: 'open').save
  	end
  end
end
