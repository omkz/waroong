class OrderStatus < ApplicationRecord
  has_many :orders, dependent: :destroy
end
