class Product < ApplicationRecord
validates :shortdescription, length: {in: 5..40}
validates :longdescription, length: {in: 15..500}
validates :brand, :model, :price, :shortdecription, :longdescription, presence: true
end
