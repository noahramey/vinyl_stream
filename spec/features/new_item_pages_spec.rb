require 'rails_helper'

describe 'the add an item listing path' do
  it "should add an item" do
    user = FactoryGirl.create(:user)
    account = FactoryGirl.create(:account, user_id: user.id)
    login_as(user, :scope => :user)
    visit account_path(account)
    fill_in 'Name', with: 'Prima Donna'
    fill_in 'Description', with: 'Album by Vince Staples'
    fill_in 'Category', with: 'Albums'
    fill_in 'Price', with: 9.99
    click_on 'Add Item Listing'
    expect(page).to have_content 'Prima Donna'

  end
end
