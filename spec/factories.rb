FactoryGirl.define do
  factory :user do
    sequence(:username) {|n| "#{n}kerronh"}
    sequence(:email) {|n| "user#{n}@example.com" }
    password "password"
    password_confirmation "password"
  end

  factory :review do
    sequence(:title) { |n| "#{n} HTC One M8" }
    sequence(:description) { |n| "#{n} HTC Sense UI 7 over Android 5.0" }
    video "video"

    user
  end
end
