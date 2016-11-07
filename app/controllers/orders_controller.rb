class OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
  end

  def create
    @account = current_user.account
    @cart = @account.cart
    @order = Order.create(total: @cart.total, account_id: @account.id)
    @cart.items.each do |item|
      item.update(order_id: @order.id)
    end
    redirect_to @order.paypal_url(order_path(@order))
  end

  protect_from_forgery except: [:hook]
  def hook
    params.permit!
    status = params[:payment_status]
    if status == "Completed"
      @order = Order.find params[:invoice]
      @order.update_attributes notification_params: params, status: status, transaction_id: params[:txn_id], purchased_at: Time.now
    end
    render nothing: true
  end
end
