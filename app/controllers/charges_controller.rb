class ChargesController < ApplicationController
  def new
  end

  def create
    # Amount in cents
    @amount = current_order.subtotal

    customer = Stripe::Customer.create email: params[:email],
                                       card: params[:registration][:card_token]

    charge = Stripe::Charge.create(
        :customer => customer.id,
        :amount => (@amount * 100).to_i,
        :description => 'Wangoon Stripe customer',
        :currency => 'usd'
    )

    session[:order_id] = nil

  rescue Stripe::CardError => e
    flash[:notice] = e.message
    redirect_to new_charge_path
  end

end
