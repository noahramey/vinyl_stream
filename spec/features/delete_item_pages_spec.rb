require 'rails_helper'

describe 'the delete item path' do
  it "should delete the item", js: true do
    user = FactoryGirl.create(:user)
    account = FactoryGirl.create(:account, user_id: user.id)
    item = FactoryGirl.create(:item, account_id: account.id)
    login_as(user, :scope => :user)
    visit account_path(account)
    click_on 'Delete'
    expect(page).to have_css 'section', visible: 'none'
  end
end
