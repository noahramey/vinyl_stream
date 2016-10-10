require 'rails_helper'

describe 'the add item to cart process' do
  it "should add item to cart" do
    user = FactoryGirl.create(:user)
    account = FactoryGirl.create(:account, user_id: user.id)
    login_as(user, :scope => :user)
    item = FactoryGirl.create(:item, account_id: account.id)
    visit items_path
    click_on "Add to Cart"
    visit cart_path(account.cart)
    expect(page).to have_content 'Test Name'
  end
end
