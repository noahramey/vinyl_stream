class HomeController < ApplicationController
  def index
    if current_user
      if !current_user.account
        redirect_to new_account_path
      end
    end
  end
end
