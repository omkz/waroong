class OrderItemsController < ApplicationController

  def create
    @order = OrderItem.where("product_id = ? AND order_id = ?", params[:order_item][:product_id], session[:order_id]).first
    if @order
      @order.update(quantity: @order.quantity + params[:order_item][:quantity].to_i)
      @order.save
    else
      @order = current_order
      @order.order_items.new(order_item_params) do
        @order.order_status_id = 1
      end
      @order.save
      session[:order_id] = @order.id
    end
  end

  def update
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.update(order_item_params)
    @order_items = @order.order_items
  end

  def destroy
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.destroy
    @order_items = @order.order_items
  end

  private

  def order_item_params
    params.require(:order_item).permit(:quantity, :product_id)
  end
end
