require 'rails_helper'

describe 'the items index path' do
  it "should list all items if there are any" do
    user = FactoryGirl.create(:user)
    account = FactoryGirl.create(:account, user_id: user.id)
    item1 = FactoryGirl.create(:item, account_id: account.id)
    item2 = FactoryGirl.create(:item, name: 'Test Name 2', account_id: account.id)
    visit items_path
    expect(page).to have_content 'Test Name'
  end
end