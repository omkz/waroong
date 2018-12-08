class Product < ApplicationRecord
  has_many :order_items
  has_one_attached :image

  default_scope { where(active: true) }
end
