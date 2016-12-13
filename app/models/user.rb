class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :carts
  has_many :orders, through: :carts

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :create_cart

  def create_cart
  	carts.build(state:'open')
  	save 
  end

	def last_cart
		carts.last	
	end
end
