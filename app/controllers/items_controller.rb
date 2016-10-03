class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def create
    @account = current_user.account
    @item = Item.new(item_params)
    @item.account_id = @account.id
    if @item.save
      redirect_to account_path(@account)
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :category, :price)
  end
end
