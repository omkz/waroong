class CartsController < ApplicationController
  def show
    @order_items = current_order.order_items.includes(product: [image_attachment: :blob])
  end
end