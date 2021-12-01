require 'uploads'

class Product < ApplicationRecord
  belongs_to :product_category
  has_many :order_items
  has_one_attached :image

  default_scope { where(active: true) }

  after_commit :add_default_image, on: %i[create update]

  def image_header_variant
    variation =
      ActiveStorage::Variation.new(Uploads.resize_to_limit(width: 500, height: -1, blob: image.blob))
    ActiveStorage::Variant.new(image.blob, variation)
  end

  def add_default_image
    unless image.attached?
      image.attach(
        io: File.open(Rails.root.join('app', 'assets', 'images', 'no-image.png')),
        filename: 'no_image.png', content_type: 'image/png'
      )
    end
  end

end
