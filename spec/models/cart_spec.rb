require 'rails_helper'

describe Cart do
  it { should belong_to :account }
  it { should have_many :items }
end
