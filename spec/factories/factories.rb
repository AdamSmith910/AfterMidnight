FactoryGirl.define do

  factory :user do
    sequence(:email) { |n| "bademail#{n}@badserver.com" }
    password "password"
  end
end