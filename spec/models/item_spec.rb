require 'rails_helper'

describe Item do
  it { should belong_to :account }
  it { should belong_to :cart }
end
