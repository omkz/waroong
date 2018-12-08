class ProductsController < ApplicationController
  def index
    @products = Product.includes(image_attachment: :blob)
    @order_item = current_order.order_items.new
  end
end
