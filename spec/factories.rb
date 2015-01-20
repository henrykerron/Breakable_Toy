FactoryGirl.define do
  factory :user do
    username "henrykerron"
    sequence(:email) {|n| "user#{n}@example.com" }
    password "password"
    password_confirmation "password"
  end

  factory :review do
    sequence(:title) { |n| "#{n} HTC One M8" }
    sequence(:description) { |n| "#{n} Android 5.0" }
    sequence(:video) { |n| "#{n} Video" }

    user
  end
end
