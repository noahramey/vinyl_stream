class CartsController < ApplicationController
  def show
    flash[:title] = "Cart - VinylStream"
    @cart = current_user.account.cart
  end
end
