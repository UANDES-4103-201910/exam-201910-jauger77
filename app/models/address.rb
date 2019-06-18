class Address < ApplicationRecord
  belongs_to :user
  belongs_to :order, optional: true

  validates :city, format: {with: /\A[a-zA-Z]+\z/}
  validates :country, format: {with: /\A[a-zA-Z]+\z/} 
end
