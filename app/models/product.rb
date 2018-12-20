require 'uploads'

class Product < ApplicationRecord
  has_many :order_items
  has_one_attached :image

  default_scope { where(active: true) }

  def image_header_variant
    variation =
      ActiveStorage::Variation.new(Uploads.resize_to_fit(width: 300, height: 300, blob: image.blob))
    ActiveStorage::Variant.new(image.blob, variation)
  end

end
