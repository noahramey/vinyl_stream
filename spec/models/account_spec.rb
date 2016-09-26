require 'rails_helper'

describe Account do
  it { should belong_to :user }
  it { should have_many :items }
end
