class Order < ApplicationRecord
  belongs_to :user
  has_many :products, through: :order_products
  has_one :address, inverse_of: :order

  validates :product, :length => { :minimum => 1 }
end
