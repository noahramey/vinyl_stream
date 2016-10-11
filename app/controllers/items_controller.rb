class ItemsController < ApplicationController
  def index
    flash[:title] = "Shop - VinylStream"
    @items = Item.all
  end

  def create
    @account = current_user.account
    @item = Item.new(item_params)
    @item.account_id = @account.id
    if @item.save
      respond_to do |format|
        format.html { redirect_to account_path(@account) }
        format.js
      end
    end
  end

  def update
    @account = current_user.account
    @item = Item.find(params[:id])
    if @item.cart_id
      @item.cart_id = nil
    else
      @item.cart_id = @account.cart.id
    end
    if @item.save
      respond_to do |format|
        format.html { redirect_to items_path }
        format.js
      end
    end
  end

  def destroy
    @account = current_user.account
    @item = Item.find(params[:id])
    @item.destroy

    respond_to do |format|
      format.html { redirect_to account_path(@account) }
      format.json { head :no_content }
      format.js { render :layout => false }
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :category, :price)
  end
end
