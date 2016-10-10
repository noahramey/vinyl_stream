class CartsController < ApplicationController
  def show
    @cart = current_user.account.cart
  end
end
