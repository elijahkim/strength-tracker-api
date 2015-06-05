FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "user#{n}.example.com" }
    key "1234567890"
    password_digest "password"
  end
end
