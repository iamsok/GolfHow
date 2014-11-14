FactoryGirl.define do
  factory :user do
    sequence :email do |n|
     "blahblah@blah.com"
    end
    password 12345678
  end
end
