class AccountsController < ApplicationController
  def show
    @account = Account.find(params[:id])
  end

  def new
    if current_user
      @account = Account.new
    else
      redirect_to root_path
      flash[:notice] = "You must be signed up to create a profile."
    end
  end

  def create
    @account = Account.new(account_params)
    @account.user_id = current_user.id
    if @account.save
      redirect_to account_path(@account)
    else
      render json: @account.errors, status: :unprocessable_entity
    end
  end

  private

  def account_params
    params.require(:account).permit(:name, :about, :address, :avatar)
  end
end
