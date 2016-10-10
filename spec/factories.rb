FactoryGirl.define do
  factory :cart do
    total "9.99"
  end
  factory :account do
    name "Bob"
    address "123 Test Dr, Portland, OR"
    avatar ""
    about "testtesttest"
  end
  factory :item do
    name "Test Name"
    description "Test Description"
    category "Test Category"
    price 1.5
  end
  factory :user do
    email "test@test.com"
    password "test1234"
  end

end
