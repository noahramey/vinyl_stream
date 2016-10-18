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
    redirect_to order_path(@order)
end
