require 'rails_helper'

describe 'the add item to cart process' do
  it "should add and remove an item from cart" do
    user = FactoryGirl.create(:user)
    account = FactoryGirl.create(:account, user_id: user.id)
    user2 = FactoryGirl.create(:user, email: "noah@email.com", password: "123456")
    account2 = FactoryGirl.create(:account, user_id: user2.id)
    login_as(user2, :scope => :user)
    item = FactoryGirl.create(:item, account_id: account.id)
    visit items_path
    click_on "Add to Cart"
    visit cart_path(account.cart)
    expect(page).to have_content 'Test Name'
    visit items_path
    click_on "Remove from Cart"
    expect(account2.cart.items).to eq([])
  end
end
