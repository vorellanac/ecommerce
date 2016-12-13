class Product < ApplicationRecord
  belongs_to :category
  has_many :orders

  has_many :products, through: :orders
end
