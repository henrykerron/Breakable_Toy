FactoryGirl.define do
  factory :user do
    sequence(:username) {|n| "#{n}kerronh"}
    sequence(:email) {|n| "user#{n}@example.com" }
    password "password"
    password_confirmation "password"
  end
end
