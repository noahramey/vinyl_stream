require 'rails_helper'

describe "the create account path" do
  it "should create an account" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit new_account_path
    fill_in 'account_name', with: 'Test'
    fill_in 'account_about', with: 'testtesttest'
    attach_file 'account_avatar', "spec/asset_specs/pictures/stage.jpeg"
    fill_in 'account_address', with: '123 Test Dr'
    click_on 'Create User Account'
    expect(page).to have_content 'Test'
  end

  it "should redirect you if you are not logged in" do
    visit new_account_path
    expect(page).to have_content 'You must be signed up to create a profile'
  end
end
